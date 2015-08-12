/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

#include <stdio.h>
#include "jlog.hpp"
#include "keydiff.hpp"
#include "mpcomm.hpp"

void usage(bool isHelp)
{
    printf("usage:\n"
           "  keypatch [options] patch oldindex newindex\n"
           "  keypatch [options] patch\n"
           "options are:\n"
           "   -o --overwrite              overwrite new index file if it exists\n"
           "   -n --nooverwrite            abort if new index file exists (default)\n"
           "   -t --transmit port ip:port  send TLK data to a receiver to be collated\n"
           "                               (sends from given port to given ip:port)\n"
           "   -s --skiptlk                suppresses the warning when patch contains\n"
           "                               TLK header data and -r is not selected\n"
           "   -p --progress freq          log progress reading old index at intervals of freq bytes\n"
           "Using the single argument form of the command, the filenames of the old\n"
           "and new index files are those used to generate the patch.\n"
           "\n"
           "usage:\n"
           "   keypatch [options] [-r | --receive] port num patch oldindex newindex newtlk\n"
           "   keypatch [options] [-r | --receive] port num patch\n"
           "options are:\n"
           "   -o --overwrite              overwrite new index and TLK files if they exist\n"
           "   -n --nooverwrite            abort if new index or TLK files exist (default)\n"
           "These forms of the command listen on the given port to receive and collate TLK\n"
           "data (in addition to applying patch for this part as normal). They will listen\n"
           "for num parts.\n"
           "\n"
           "usage:\n"
           "  keypatch [-v | --version ]\n"
           "  keypatch [-h | -? | --help ]\n"
           "  keypatch [-i| --info] patch\n"
           "The --info option shows the names of the old and new index files\n"
           "and the version of keydiff used to generate the patch, then stops.\n\n");
    releaseAtoms();
    exit(isHelp ? 0 : 2);
}

class KeyPatchProgressCallback : public CInterface, public IKeyDiffProgressCallback
{
public:
    IMPLEMENT_IINTERFACE;
    virtual void handle(offset_t bytesRead) { PROGLOG("Read %" I64F "d bytes from old index", bytesRead); }
};

void version(bool isHelp)
{
    StringBuffer buff("This is keypatch version ");
    getKeyDiffVersion(buff).append(".\nIt can apply patches generated by keydiff since version ");
    getKeyDiffMinDiffVersionForPatch(buff).append(".\n");
    buff.append("To discover whether it can apply patches generated by versions\n"
                "of keydiff later than itself, see keydiff -v.\n\n");
    printf("%s", buff.str());
    if(isHelp)
        usage(true);
    releaseAtoms();
    exit(0);
}

typedef enum
{
    KEYPATCH_implicit,
    KEYPATCH_explicit,
    KEYPATCH_info
} KeyPatchMode;

class KeyPatchParams
{
public:
    KeyPatchParams() : overwrite(false), mode(KEYPATCH_implicit), xmitTLK(false), recvTLK(false), ignoreTLK(false), progressFrequency(0) {}
    StringBuffer patch;
    StringBuffer oldIndex;
    StringBuffer newIndex;
    StringBuffer newTLK;
    bool overwrite;
    KeyPatchMode mode;
    bool xmitTLK;
    bool recvTLK;
    SocketEndpoint xmitEp;
    unsigned recvNum;
    unsigned tlkPort;
    bool ignoreTLK;
    offset_t progressFrequency;
};

void getParams(unsigned argc, char * const * argv, KeyPatchParams & params)
{
    unsigned arg = 1;
    while((arg<argc) && (*argv[arg] == '-'))
    {
        if((strcmp(argv[arg], "-o") == 0) || (strcmp(argv[arg], "--overwrite") == 0))
            params.overwrite = true;
        else if((strcmp(argv[arg], "-n") == 0) || (strcmp(argv[arg], "--nooverwrite") == 0))
            params.overwrite = false;
        else if((strcmp(argv[arg], "-i") == 0) || (strcmp(argv[arg], "--info") == 0))
            params.mode = KEYPATCH_info;
        else if((strcmp(argv[arg], "-t") == 0) || (strcmp(argv[arg], "--transmit") == 0))
        {
            if((argc-arg)<=2) usage(false);
            params.xmitTLK = true;
            params.tlkPort = atoi(argv[++arg]);
            params.xmitEp.set(argv[++arg]);
            if(params.tlkPort == 0)
                throw MakeStringException(0, "Bad local port on TLK transmit");
            if(params.xmitEp.port == 0)
                throw MakeStringException(0, "Bad remote ip:port on TLK transmit");
        }
        else if((strcmp(argv[arg], "-r") == 0) || (strcmp(argv[arg], "--receive") == 0))
        {
            if((argc-arg)<=2) usage(false);
            params.recvTLK = true;
            params.tlkPort = atoi(argv[++arg]);
            params.recvNum = atoi(argv[++arg]);
            if(params.tlkPort == 0)
                throw MakeStringException(0, "Bad local port on TLK receive");
            if(params.recvNum == 0)
                throw MakeStringException(0, "Bad number of parts on TLK receive");
        }
        else if((strcmp(argv[arg], "-s") == 0) || (stricmp(argv[arg], "--skiptlk") == 0))
            params.ignoreTLK = true;
        else if((strcmp(argv[arg], "-p") == 0) || (strcmp(argv[arg], "--progress") == 0))
        {
            if((argc-arg)<=1) usage(false);
            ++arg;
            offset_t freq = atoi64_l(argv[arg], strlen(argv[arg]));
            if(freq <= 0) usage(false);
            params.progressFrequency = freq;
        }
        else if((strcmp(argv[arg], "-v") == 0) || (strcmp(argv[arg], "--version") == 0))
            version(false);
        else if((strcmp(argv[arg], "-h") == 0) || (strcmp(argv[arg], "-?") == 0) || (strcmp(argv[arg], "--help") == 0))
            version(true);
        else
            usage(false);
        arg++;
    }
    if((params.mode == KEYPATCH_info) && (params.xmitTLK || params.recvTLK))
        throw MakeStringException(0, "Cannot specify info option with TLK transmit or receive");
    if(params.xmitTLK && params.recvTLK)
        throw MakeStringException(0, "Cannot specify both TLK transmit and receive");
    unsigned argsRqd = (params.recvTLK ? 4 : 3);
    if((argc == arg+argsRqd) && (params.mode == KEYPATCH_implicit))
    {
        params.patch.append(argv[arg++]);
        params.oldIndex.append(argv[arg++]);
        params.newIndex.append(argv[arg++]);
        if(params.recvTLK)
            params.newTLK.append(argv[arg++]);
        params.mode = KEYPATCH_explicit;
    }
    else if(argc == arg+1)
    {
        params.patch.append(argv[arg++]);
    }
    else
    {
        usage(false);
    }
}

void showInfo(char const * patch, IKeyDiffApplicator * applicator)
{
    unsigned short headerVersionMajor, headerVersionMinor, headerMinPatchVersionMajor, headerMinPatchVersionMinor;
    applicator->getHeaderVersionInfo(headerVersionMajor, headerVersionMinor, headerMinPatchVersionMajor, headerMinPatchVersionMinor);
    printf("Header info for patch %s:\n"
           "Version of keydiff: %u.%u\n"
           "Min version of keypatch required: %u.%u\n", patch, headerVersionMajor, headerVersionMinor, headerMinPatchVersionMajor, headerMinPatchVersionMinor);
    StringBuffer versionError;
    if(applicator->compatibleVersions(versionError))
    {
        StringAttr oldindex, newindex, newTLK;
        bool tlkInfo;
        applicator->getHeaderFileInfo(oldindex, newindex, tlkInfo, newTLK);
        printf("Old index filename: %s\n"
               "New index filename: %s\n\n", oldindex.get(), newindex.get());
        if(tlkInfo)
            printf("Header includes info for new top level key, filename: %s\n\n", newTLK.get());
    }
    else
    {
        printf("\nCannot use patch: %s\n\n", versionError.str());
    }
}

class CNodeSender : public CInterface, public INodeSender
{
public:
    IMPLEMENT_IINTERFACE;

    CNodeSender(unsigned _port, SocketEndpoint const & ep) : port(_port), dest(createINode(ep)) {}

    virtual void send(CNodeInfo & info)
    {
        CMessageBuffer mb;
        info.serialize(mb);
        startMPServer(port);
        PROGLOG("Sending tlk");
        queryWorldCommunicator().send(mb, dest, MPTAG_KEYDIFF);
        stopMPServer();
    }

private:
    unsigned port;
    Owned<INode> dest;
};

class CNodeReceiver : public CInterface, public INodeReceiver
{
public:
    IMPLEMENT_IINTERFACE;

    CNodeReceiver(unsigned port)
    {
        startMPServer(port);
    }

    ~CNodeReceiver()
    {
        stopMPServer();
    }

    virtual bool recv(CNodeInfo & info)
    {
        if(queryWorldCommunicator().recv(mb, 0, MPTAG_KEYDIFF))
        {
            info.deserialize(mb);
            return true;
        }
        return false;
    }

    virtual void stop()
    {
        queryWorldCommunicator().cancel(0, MPTAG_KEYDIFF);
    }

private:
    CMessageBuffer mb;
};

int main(int argc, char * const * argv)
{
    InitModuleObjects();
    try
    {
        KeyPatchParams params;
        getParams(argc, argv, params);
        Owned<IKeyDiffApplicator> applicator;
        if(params.mode == KEYPATCH_explicit)
            applicator.setown(createKeyDiffApplicator(params.patch.str(), params.oldIndex.str(), params.newIndex.str(), params.newTLK.str(), params.overwrite, params.ignoreTLK));
        else
            applicator.setown(createKeyDiffApplicator(params.patch.str(), params.overwrite, params.ignoreTLK));
        if(params.mode == KEYPATCH_info)
            showInfo(params.patch.str(), applicator);
        else
        {
            if(params.xmitTLK)
                applicator->setTransmitTLK(new CNodeSender(params.tlkPort, params.xmitEp));
            else if(params.recvTLK)
                applicator->setReceiveTLK(new CNodeReceiver(params.tlkPort), params.recvNum);
            if(params.progressFrequency)
                applicator->setProgressCallback(new KeyPatchProgressCallback, params.progressFrequency);
            applicator->run();
        }
    }
    catch(IException * e)
    {
        EXCLOG(e);
        e->Release();
        releaseAtoms();
        return 1;
    }
    releaseAtoms();
    return 0;
}
