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

mainrec := RECORD
    STRING5 key;
    STRING value;
END;

set1 := DATASET([{'vqork', 'erdmo'}, {'vqork', 'ueihq'}, {'htbdf', 'ruknr'}, {'htbdf', 'fgglu'}, {'htbdf', 'tnnnd'}, {'htbdf', 'othte'}, {'sotii', 'ewdcr'}, {'sotii', 'nerxv'}, {'sotii', 'hsohw'}, {'sotii', 'eevid'}, {'rojgo', 'csabd'}, {'rojgo', 'aoxia'}, {'rojgo', 'cotfu'}, {'rojgo', 'potnt'}, {'ascya', 'yeora'}, {'ascya', 'nirln'}, {'ascya', 'iriva'}, {'ascya', 'erbet'}, {'ascya', 'bueul'}, {'ascya', 'aemfj'}, {'ascya', 'oaeui'}, {'nwzur', 'itono'}, {'nwzur', 'enxni'}, {'etsar', 'taels'}, {'etsar', 'nyteu'}, {'wteee', 'tuhfo'}, {'wteee', 'aoere'}, {'wteee', 'nfwta'}, {'wteee', 'taicu'}, {'wteee', 'tdeei'}, {'wteee', 'ebior'}, {'rerix', 'poeae'}, {'rerix', 'nueto'}, {'rerix', 'ulaao'}, {'rerix', 'wonej'}, {'rerix', 'uacai'}, {'rerix', 'ondur'}, {'rerix', 'ynrue'}, {'umgeg', 'wazmr'}, {'umgeg', 'enzfx'}, {'nmito', 'diafa'}, {'nmito', 'ohvei'}, {'nmito', 'obyrg'}, {'nmito', 'ayhvd'}, {'benor', 'sfoot'}, {'benor', 'wqhrl'}, {'benor', 'eemiv'}, {'rdvge', 'tvbna'}, {'rdvge', 'ysire'}, {'rdvge', 'dteda'}, {'rdvge', 'iicil'}, {'rdvge', 'tjisr'}, {'rdvge', 'ogega'}, {'rdvge', 'sokwv'}, {'rdvge', 'serif'}, {'rdvge', 'airae'}, {'rdvge', 'ueawu'}, {'rdvge', 'ditoe'}, {'aeeie', 'seing'}, {'ofiao', 'detde'}, {'ofiao', 'regwo'}, {'ofiao', 'isanl'}, {'oeoae', 'enuem'}, {'oeoae', 'rxnrq'}, {'oeoae', 'uuelv'}, {'oeoae', 'uffpf'}, {'oeoae', 'aetia'}, {'nedbi', 'gniot'}, {'nedbi', 'eufnz'}, {'nedbi', 'aoiiy'}, {'nedbi', 'fasue'}, {'vnunq', 'ogcel'}, {'vnunq', 'araii'}, {'vnunq', 'sdhpo'}, {'aeefa', 'nefnf'}, {'aeefa', 'rreer'}, {'esyer', 'sruet'}, {'esyer', 'riulr'}, {'esyer', 'nyaia'}, {'tedau', 'hvoti'}, {'nvrit', 'edelm'}, {'nvrit', 'hegoi'}, {'oesbe', 'rtbre'}, {'oesbe', 'mgcve'}, {'oesbe', 'omrpn'}, {'oesbe', 'tbmlj'}, {'oesbe', 'sdbxo'}, {'oesbe', 'saehi'}, {'oesbe', 'saeeu'}, {'oesbe', 'inijp'}, {'oesbe', 'dgrif'}, {'oesbe', 'spyni'}, {'oesbe', 'gdnaf'}, {'wrkuo', 'eeyou'}, {'snwee', 'tduaa'}, {'snwee', 'rnoev'}, {'snwee', 'cfcsr'}, {'snwee', 'ttsen'}, {'snwee', 'uapea'}, {'snwee', 'fieri'}, {'eueiu', 'mreri'},
{'eueiu', 'oukac'},
{'eueiu', 'eimvi'}, {'eueiu', 'hitgj'}, {'eueiu', 'altoy'}, {'eueiu', 'itevs'}, {'hgnts', 'aoaeu'}, {'yawme', 'oaoao'}, {'yawme', 'fdool'}, {'yawme', 'loroi'}, {'yawme', 'hmaid'}, {'ytzbl', 'aoipa'}, {'ytzbl', 'seddz'}, {'ytzbl', 'ioemt'}, {'ytzbl', 'craan'}, {'vmfae', 'dsdnr'}, {'vmfae', 'jedau'}, {'vmfae', 'eoigo'}, {'vmfae', 'neset'}, {'vmfae', 'udcrv'}, {'vmfae', 'oefer'}, {'vmfae', 'affvc'}, {'vmfae', 'yeuei'}, {'vmfae', 'tdoui'}, {'vmfae', 'oueje'}, {'ftasc', 'jhecu'}, {'ftasc', 'dldol'}, {'ftasc', 'aaemv'}, {'ftasc', 'crwnm'}, {'ftasc', 'zyvws'}, {'ftasc', 'pjtou'}, {'ftasc', 'ntvoe'}, {'ftasc', 'imlur'}, {'ftasc', 'eaiuh'}, {'ojnwt', 'ltaue'}, {'ojnwt', 'yartr'}, {'ojnwt', 'aiahe'}, {'cgmhl', 'cfpua'}, {'cgmhl', 'ribto'}, {'cgmhl', 'snuhi'}, {'cgmhl', 'znmrt'}, {'cgmhl', 'efsee'}, {'ozirl', 'tuorm'}, {'oaoql', 'ogzog'}, {'oaoql', 'ufrvp'}, {'oaoql', 'trten'}, {'olapm', 'siasv'}, {'olapm', 'ognbo'}, {'olapm', 'muyee'}, {'lnfpe', 'tiomf'}, {'lnfpe', 'lsaei'}, {'oaesr', 'ylnen'}, {'oaesr', 'iozcr'}, {'oaesr', 'geoot'}, {'oaesr', 'elaaa'}, {'oaesr', 'dafoa'}, {'oaesr', 'wdmei'}, {'saren', 'areba'}, {'lorim', 'altcr'}, {'lorim', 'cedqu'}, {'lorim', 'bxhty'}, {'lorim', 'pdqna'}, {'lorim', 'dosin'}, {'lorim', 'nieen'}, {'lorim', 'cblee'}, {'lorim', 'aetup'}, {'lorim', 'azamw'}, {'lorim', 'rduei'}, {'stroz', 'zojdo'}, {'stroz', 'ieneb'}, {'stroz', 'esrnu'}, {'stroz', 'seafl'}, {'stroz', 'ckiow'}, {'dveig', 'rtiei'}, {'dveig', 'rbigi'}, {'dveig', 'pcwdv'}, {'dveig', 'abyol'}, {'dveig', 'unbio'}, {'dveig', 'ksbde'}, {'dveig', 'eorci'}, {'dveig', 'blaue'}, {'dveig', 'jveeu'}, {'dveig', 'nwnal'}, {'takbn', 'stuss'}, {'takbn', 'pipjd'}, {'cpedt', 'edetp'}, {'cpedt', 'ltwra'}, {'cpedt', 'itmwd'}, {'cpedt', 'ildse'}, {'cpedt', 'aidon'}, {'cpedt', 'mpgqn'}, {'cpedt', 'noihr'}, {'lsavn', 'srtpe'}, {'lsavn', 'lniie'}, {'kgnyq', 'cnnuh'}, {'edqte', 'yeeng'}, {'edqte', 'brstu'}, {'edqte', 'saori'}, {'edqte', 'ojron'}, {'edqte', 'cboie'}, {'mzrpl', 'nwxer'}, {'taese', 'xtrue'}, {'taese', 'sueie'}, {'taese', 'loequ'},
 {'taese', 'ndlok'}, {'taese', 'oatkh'}, {'taese', 'xiioe'}, {'taese', 'jiewe'}, {'pbeti', 'aoayl'}, {'oeeak', 'ioati'}, {'oeeak', 'tkfss'}, {'oeeak', 'rnrwb'}, {'cenuo', 'arenu'}, {'cenuo', 'naudy'}, {'cenuo', 'obsle'}, {'cenuo', 'aieaa'}, {'cenuo', 'dmoei'}, {'cenuo', 'fcelo'}, {'cenuo', 'vtitc'}, {'cenuo', 'ausni'}, {'cenuo', 'twire'}, {'cenuo', 'eeeaa'}, {'dlcic', 'ysirr'}, {'dlcic', 'ecewi'}, {'dlcic', 'dbneo'}, {'dlcic', 'grzei'}, {'dlcic', 'arkhn'}, {'aaefu', 'ieime'}, {'aaefu', 'gieae'}, {'aaefu', 'aowik'}, {'aaefu', 'wrgrl'}, {'aaefu', 'ortlg'}, {'aaefu', 'nsues'}, {'aaefu', 'eduyi'}, {'aaefu', 'fdrbr'}, {'anmeb', 'dsvni'}, {'anmeb', 'fijto'}, {'anmeb', 'peabe'}, {'anmeb', 'ryoea'}, {'anmeb', 'onxsy'}, {'anmeb', 'roivi'}, {'anmeb', 'eqeld'}, {'aserg', 'otron'}, {'aserg', 'tueuo'}, {'aserg', 'mroei'}, {'aserg', 'nbtla'}, {'aserg', 'tlaee'}, {'aserg', 'ltcsi'}, {'aserg', 'nenev'}, {'aserg', 'gulus'}, {'ikxom', 'iidgr'}, {'ikxom', 'icsiw'}, {'ikxom', 'diary'}, {'ikxom', 'teoro'}, {'ikxom', 'girms'}, {'ikxom', 'aiboo'}, {'ikxom', 'ioneo'}, {'ikxom', 'oednn'}, {'gccoa', 'toesa'}, {'gccoa', 'foeit'}, {'gccoa', 'btutn'}, {'gccoa', 'ejoel'}, {'gccoa', 'egpni'}, {'gccoa', 'honce'}, {'gccoa', 'toonp'}, {'gccoa', 'aeinn'}, {'gccoa', 'ibner'}, {'gccoa', 'icmip'}, {'gccoa', 'iurre'}, {'gccoa', 'woait'}, {'gccoa', 'xugai'}, {'gccoa', 'gueeu'}, {'swers', 'mtetm'}, {'swers', 'ettob'}, {'ivdrv', 'namel'}, {'ivdrv', 'ttoag'}, {'uooii', 'oarhl'}, {'uooii', 'sqise'}, {'uooii', 'danoq'}, {'uooii', 'jtwra'}, {'uooii', 'oldtd'}, {'uooii', 'arfte'}, {'soent', 'elasm'}, {'soent', 'nmtle'}, {'soent', 'uaeje'}, {'edsfd', 'tiieq'}, {'edsfd', 'ttayo'}, {'edsfd', 'oghoe'}, {'edsfd', 'ncrta'}, {'hbjao', 'btclo'}, {'hbjao', 'baoto'}, {'hbjao', 'aiyya'}, {'hbjao', 'mrrdr'}, {'hbjao', 'nconi'}, {'dlraa', 'rasti'}, {'izgml', 'zosii'}, {'roogv', 'lsomt'}, {'roogv', 'tlopo'}, {'roogv', 'tocto'}, {'roogv', 'ireia'}, {'roogv', 'iofbi'}, {'roogv', 'lvdyh'}, {'srkdd', 'annnn'}, {'hnece', 'rvvhe'}, {'hnece', 'tteox'}, {'hnece', 'aloab'},
 {'qtbor', 'wsodg'},
{'qtbor', 'yldme'}, {'qtbor', 'gfsog'}, {'egcen', 'fcdeo'}, {'egcen', 'nleah'}, {'egcen', 'xiiai'}, {'brfct', 'yerub'}, {'brfct', 'xesfe'}, {'degit', 'lggdt'}, {'degit', 'kopai'}, {'nvyea', 'iyaak'}, {'nvyea', 'bhgdd'}, {'nvyea', 'qyoea'}, {'nvyea', 'didlz'}, {'iwaso', 'nevnn'}, {'iwaso', 'vetrn'}, {'iwaso', 'qeetr'}, {'iwaso', 'aauct'}, {'iwaso', 'lzsry'}, {'iwaso', 'netey'}, {'iwaso', 'agiaw'}, {'iwaso', 'eenek'}, {'nedga', 'txbtu'}, {'nedga', 'ngnyk'}, {'nedga', 'hjilf'}, {'tuivs', 'afxdo'}, {'trqoe', 'seddf'}, {'trqoe', 'uuaoe'}, {'trqoe', 'isvfo'}, {'trqoe', 'iueau'}, {'trqoe', 'uooui'}, {'tuehn', 'taexn'}, {'tuehn', 'cifst'}, {'tuehn', 'nrmrc'}, {'rpejx', 'eoaee'}, {'rpejx', 'osect'}, {'rpejx', 'hmnnf'}, {'rpejx', 'snery'}, {'reptw', 'rrtpr'}, {'reptw', 'raocw'}, {'reptw', 'lgwcn'}, {'reptw', 'isena'}, {'amyir', 'anuam'}, {'cemgg', 'ileoe'}, {'cemgg', 'felie'}, {'cemgg', 'pgewo'}, {'eypdd', 'iedwc'}, {'eypdd', 'alzas'}, {'eypdd', 'aeeai'}, {'eypdd', 'yvrii'}, {'eypdd', 'ledqw'}, {'eypdd', 'prgon'}, {'eypdd', 'iqaaj'}, {'eypdd', 'ontea'}, {'naaee', 'entey'}, {'naaee', 'onigl'}, {'naaee', 'ataen'}, {'naaee', 'rroka'}, {'fypah', 'tngta'}, {'fypah', 'mrvat'}, {'fypah', 'ining'}, {'fypah', 'giiin'}, {'fypah', 'toiie'}, {'aliaf', 'gsiat'}, {'aliaf', 'herjn'}, {'aliaf', 'earma'}, {'ajour', 'ldnya'}, {'ajour', 'rasns'}, {'ajour', 'wnlat'}, {'ajour', 'nnhvg'}, {'ajour', 'uioem'}, {'yagoe', 'einbr'}, {'yagoe', 'dipiw'}, {'girst', 'rdeme'}, {'girst', 'ieipo'}, {'girst', 'oxgun'}, {'girst', 'twmes'}, {'girst', 'ohqic'}, {'ueran', 'geiae'}, {'ueran', 'eltae'}, {'ueran', 'gitay'}, {'ueran', 'iityo'}, {'ueran', 'latal'}, {'ueran', 'oonao'}, {'ueran', 'eytzs'}, {'ueran', 'iadei'}, {'ueran', 'gthwh'}, {'ueran', 'jtreo'}, {'ueran', 'elsao'}, {'ueran', 'iogsi'}, {'iiejs', 'grnii'}, {'amerr', 'faois'}, {'amerr', 'nifyn'}, {'amerr', 'awjge'}, {'amerr', 'ffmmd'}, {'amerr', 'uereb'}, {'dlqzp', 'ydoew'}, {'dlqzp', 'eoenf'}, {'dlqzp', 'andtr'}, {'ojeho', 'urnor'}, {'ojeho', 'bbzna'}, {'ojeho', 'yvuje'},
{'ojeho', 'eetul'},
{'oawpv', 'egrkn'}, {'liwrw', 'uuguo'}, {'ieheo', 'oiaau'}, {'ieheo', 'tpfru'}, {'ieheo', 'aunlo'}, {'ieheo', 'eewlo'}, {'ieheo', 'eslum'}, {'htcmt', 'tpfbi'}, {'uobne', 'qpndl'}, {'uobne', 'deixu'}, {'uobne', 'oanrr'}, {'uobne', 'ufbek'}, {'uobne', 'aennw'}, {'zzzzz', 'zzzzz'}], mainrec);

set2 := DATASET([{'anmee', 'dsvni'}, {'anmee', 'fijto'}, {'anmee', 'peabe'}, {'anmee', 'ryoea'}, {'anmee', 'onxsy'}, {'anmee', 'roivi'}, {'anmee', 'eqeld'}, {'htbdf', 'ruknr'}, {'htbdf', 'fgglu'}, {'htbdf', 'tnnnd'}, {'htbdf', 'othte'}, {'htbdf', 'inase'}, {'ntuee', 'vqutb'}, {'ntuee', 'joxih'}, {'ntuee', 'riedo'}, {'ntuee', 'aouod'}, {'ntuee', 'tiolo'}, {'ntuee', 'srydo'}, {'ajkar', 'ldnya'}, {'ajkar', 'rasns'}, {'ajkar', 'wnlat'}, {'ajkar', 'nnhvg'}, {'ajkar', 'uioem'}, {'ascya', 'yeora'}, {'ascya', 'nirln'}, {'ascya', 'iriva'}, {'ascya', 'erbet'}, {'ascya', 'bueul'}, {'ascya', 'aemfj'}, {'ascya', 'oaeui'}, {'wteee', 'tuhfo'}, {'wteee', 'aoere'}, {'wteee', 'nfwta'}, {'wteee', 'taicu'}, {'wteee', 'tdeei'}, {'wteee', 'ebior'}, {'rerix', 'pjaae'}, {'rerix', 'buato'}, {'rerix', 'sacni'}, {'rerix', 'ondur'}, {'rerix', 'ynrue'}, {'rerix', 'adafa'}, {'rerix', 'rgisn'}, {'agehr', 'cnlct'}, {'easas', 'taels'}, {'easas', 'nyteu'}, {'umgeg', 'wazmr'}, {'umgeg', 'enzfx'}, {'nmito', 'diafa'}, {'nmito', 'ohvei'}, {'nmito', 'obyrg'}, {'nmito', 'ayhvd'}, {'rdvge', 'tvbna'}, {'rdvge', 'ysire'}, {'rdvge', 'dteda'}, {'rdvge', 'iicil'}, {'rdvge', 'tjisr'}, {'rdvge', 'ogega'}, {'rdvge', 'sokwv'}, {'rdvge', 'serif'}, {'rdvge', 'airae'}, {'rdvge', 'ueawu'}, {'rdvge', 'ditoe'}, {'oeoae', 'enuem'}, {'oeoae', 'rxnrq'}, {'oeoae', 'uuelv'}, {'oeoae', 'uffpf'}, {'oeoae', 'aetia'}, {'rakgv', 'lsomt'}, {'rakgv', 'tlopo'}, {'rakgv', 'tocto'}, {'rakgv', 'ireia'}, {'rakgv', 'iofbi'}, {'rakgv', 'lvdyh'}, {'ashiu', 'uuror'}, {'ashiu', 'leiva'}, {'peiot', 'fdvbe'}, {'peiot', 'trtqi'}, {'aeefa', 'nefnf'}, {'aeefa', 'rreer'}, {'esyer', 'woulr'}, {'esyer', 'nyaia'}, {'esyer', 'ebpru'}, {'esyer', 'ettna'}, {'nvrit', 'edelm'}, {'nvrit', 'hegoi'}, {'tedau', 'hvoti'}, {'oaihe', 'dnamw'}, {'oesbe', 'rtbre'}, {'oesbe', 'mgcve'}, {'oesbe', 'omrpn'}, {'oesbe', 'tbmlj'}, {'oesbe', 'sdbxo'}, {'oesbe', 'saehi'}, {'oesbe', 'saeeu'}, {'oesbe', 'inijp'}, {'oesbe', 'dgrif'}, {'oesbe', 'spyni'}, {'oesbe', 'gdnaf'}, {'ewnta', 'acaui'}, {'ewnta', 'neila'},
{'otidz', 'ievvi'},
{'sgpim', 'akafr'}, {'yawme', 'oaoao'}, {'yawme', 'fdool'}, {'yawme', 'loroi'}, {'yawme', 'hmaid'}, {'vmfae', 'dsdnr'}, {'vmfae', 'jedau'}, {'vmfae', 'eoigo'}, {'vmfae', 'neset'}, {'vmfae', 'udcrv'}, {'vmfae', 'oefer'}, {'vmfae', 'affvc'}, {'vmfae', 'yeuei'}, {'vmfae', 'tdoui'}, {'vmfae', 'oueje'}, {'riigl', 'raoti'}, {'riigl', 'uloet'}, {'riigl', 'sjlbd'}, {'riigl', 'beovo'}, {'riigl', 'tlndu'}, {'riigl', 'nrnrl'}, {'riigl', 'sneie'}, {'riigl', 'ghbii'}, {'riigl', 'eoiaw'}, {'riigl', 'rnlal'}, {'riigl', 'uewee'}, {'riigl', 'ugaye'}, {'riigl', 'eeidh'}, {'tpbas', 'sueie'}, {'tpbas', 'aoequ'}, {'tpbas', 'ndlok'}, {'tpbas', 'satuh'}, {'tpbas', 'xiioe'}, {'tpbas', 'oeiao'}, {'oahng', 'griii'}, {'oahng', 'ajeti'}, {'oahng', 'slnay'}, {'ofiio', 'detde'}, {'ofiio', 'regwo'}, {'ofiio', 'isanl'}, {'ftasc', 'jhecu'}, {'ftasc', 'dldol'}, {'ftasc', 'aaemv'}, {'ftasc', 'zyvws'}, {'ftasc', 'pjtou'}, {'ftasc', 'ntvoe'}, {'ftasc', 'haedv'}, {'ftasc', 'tatmu'}, {'ftasc', 'owmmi'}, {'ftasc', 'eaiso'}, {'ojnwt', 'ltaue'}, {'ojnwt', 'yartr'}, {'ojnwt', 'aiahe'}, {'oaoql', 'rfrep'}, {'oaoql', 'araen'}, {'oaoql', 'uregt'}, {'rqeri', 'dreze'}, {'rqeri', 'ffppi'}, {'rqeri', 'ooela'}, {'olapm', 'siasv'}, {'olapm', 'ognbo'}, {'olapm', 'muyee'}, {'lnfpe', 'tiomf'}, {'lnfpe', 'lsaei'}, {'oaesr', 'geoot'}, {'oaesr', 'elaaa'}, {'oaesr', 'dafoa'}, {'oaesr', 'miteb'}, {'lorim', 'altcr'}, {'lorim', 'cedqu'}, {'lorim', 'bxhty'}, {'lorim', 'pdqna'}, {'lorim', 'dosin'}, {'lorim', 'nieen'}, {'lorim', 'cblee'}, {'lorim', 'aetup'}, {'lorim', 'azamw'}, {'lorim', 'rduei'}, {'dveig', 'rtiei'}, {'dveig', 'rbigi'}, {'dveig', 'pcwdv'}, {'dveig', 'abyol'}, {'dveig', 'unbio'}, {'dveig', 'ksbde'}, {'dveig', 'eorci'}, {'dveig', 'blaue'}, {'dveig', 'jveeu'}, {'dveig', 'nwnal'}, {'nwour', 'itono'}, {'nwour', 'ebeoo'}, {'takbn', 'stuss'}, {'takbn', 'pipjd'}, {'mgzox', 'xhlrd'}, {'mgzox', 'invec'}, {'mgzox', 'uewpi'}, {'leadi', 'siiks'}, {'leadi', 'rgtlg'}, {'leadi', 'sunli'}, {'leadi', 'dsiea'}, {'leadi', 'sinad'}, {'gbdit', 'nbnlw'}, {'gbdit', 'ecade'},
{'gbdit', 'ndaor'}, {'aattd', 'lejio'}, {'aattd', 'jirfo'}, {'aattd', 'wvhin'}, {'eigis', 'atono'}, {'eigis', 'rlghp'}, {'lsavn', 'srtpe'}, {'lsavn', 'lniie'}, {'kgnyq', 'cnnuh'}, {'lewww', 'adihp'}, {'lewww', 'eoess'}, {'mzrpl', 'nwxer'}, {'reatw', 'rrtpr'}, {'reatw', 'raocw'}, {'reatw', 'lgwcn'}, {'reatw', 'velme'}, {'reatw', 'enilz'}, {'pbeti', 'aoayl'}, {'oeeak', 'eoaei'}, {'oeeak', 'akfas'}, {'oeeak', 'ruyes'}, {'oeeak', 'nbher'}, {'oeeak', 'jatdi'}, {'aaefu', 'ieime'}, {'aaefu', 'gieae'}, {'aaefu', 'aowik'}, {'aaefu', 'wrgrl'}, {'aaefu', 'ortlg'}, {'aaefu', 'nsues'}, {'aaefu', 'eduyi'}, {'aaefu', 'fdrbr'}, {'ikxom', 'iidgr'}, {'ikxom', 'icsiw'}, {'ikxom', 'teoro'}, {'ikxom', 'gcrms'}, {'ikxom', 'anbot'}, {'ikxom', 'kednn'}, {'ikxom', 'riwel'}, {'ikxom', 'esthi'}, {'swers', 'mtetm'}, {'swers', 'ettob'}, {'ymgse', 'einbr'}, {'ymgse', 'dipiw'}, {'benid', 'sfoot'}, {'benid', 'wqhrl'}, {'benid', 'eemiv'}, {'nieyp', 'uoneg'}, {'uooii', 'oarhl'}, {'uooii', 'sqise'}, {'uooii', 'danoq'}, {'uooii', 'jtwra'}, {'uooii', 'oldtd'}, {'uooii', 'arfte'}, {'eicen', 'fcdeo'}, {'eicen', 'nleah'}, {'eicen', 'xiiai'}, {'eicen', 'gfnte'}, {'soent', 'elasm'}, {'soent', 'nmtle'}, {'soent', 'uaeje'}, {'edsfd', 'tiieq'}, {'edsfd', 'ttayo'}, {'edsfd', 'oghoe'}, {'edsfd', 'ncrta'}, {'ognns', 'aoaeu'}, {'izgtn', 'zosii'}, {'dlraa', 'rasti'}, {'srkdd', 'annnn'}, {'zevtk', 'byaee'}, {'zevtk', 'efait'}, {'zevtk', 'bisre'}, {'zevtk', 'wspgv'}, {'hnece', 'rvvhe'}, {'hnece', 'tteox'}, {'hnece', 'aloab'}, {'qtbor', 'wsodg'}, {'qtbor', 'yldme'}, {'qtbor', 'gfsqy'}, {'qtbor', 'civlg'}, {'cesto', 'meobi'}, {'cesto', 'ajpkt'}, {'cesto', 'rihau'}, {'cesto', 'unltk'}, {'cesto', 'dvpan'}, {'cesto', 'eoest'}, {'cesto', 'ralds'}, {'cesto', 'ieota'}, {'cesto', 'eabll'}, {'nvyea', 'iyaak'}, {'nvyea', 'bhedd'}, {'nvyea', 'didlz'}, {'nvyea', 'tdhar'}, {'nvyea', 'cdroa'}, {'nvyea', 'iglre'}, {'tuivs', 'afxdo'}, {'nedga', 'txbtu'}, {'nedga', 'ngnyk'}, {'nedga', 'hjilf'}, {'iwaso', 'nevnn'}, {'iwaso', 'vetrn'}, {'iwaso', 'qeetr'}, {'iwaso', 'aauct'},
{'iwaso', 'lzsry'}, {'iwaso', 'netey'}, {'iwaso', 'agiaw'}, {'iwaso', 'eenek'}, {'trqoe', 'seddf'}, {'trqoe', 'uuaoe'}, {'trqoe', 'isvfo'}, {'trqoe', 'iueau'}, {'trqoe', 'uooui'}, {'tuehn', 'aifbt'}, {'tuehn', 'nrmrc'}, {'tuehn', 'sohie'}, {'nadbi', 'gniot'}, {'nadbi', 'eufnz'}, {'nadbi', 'aoiiy'}, {'nadbi', 'fasue'}, {'rpejx', 'eoaee'}, {'rpejx', 'osect'}, {'rpejx', 'hmnnf'}, {'rpejx', 'snery'}, {'giuam', 'hwvcf'}, {'amyir', 'anuam'}, {'cemgg', 'ileoe'}, {'cemgg', 'felie'}, {'cemgg', 'pgewo'}, {'naaee', 'entey'}, {'naaee', 'onigl'}, {'naaee', 'ataen'}, {'naaee', 'rroka'}, {'notet', 'ezeye'}, {'srtii', 'ewdcr'}, {'srtii', 'nerxv'}, {'srtii', 'hsohw'}, {'srtii', 'eevid'}, {'reahl', 'cfpua'}, {'reahl', 'ribto'}, {'reahl', 'snuhi'}, {'reahl', 'znmrt'}, {'reahl', 'efsee'}, {'oegia', 'lggdt'}, {'oegia', 'kopai'}, {'fmoen', 'hadoi'}, {'fmoen', 'ikavh'}, {'fmoen', 'aicoo'}, {'fmoen', 'roxbi'}, {'fmoen', 'iemer'}, {'fmoen', 'eqbeu'}, {'fmoen', 'itklw'}, {'fmoen', 'rpfhr'}, {'fmoen', 'ibsei'}, {'fmoen', 'lzeiu'}, {'fmoen', 'anlee'}, {'girst', 'rdeme'}, {'girst', 'oxgun'}, {'girst', 'twmes'}, {'girst', 'ohcmi'}, {'girst', 'ttnin'}, {'iiejs', 'orfzs'}, {'iiejs', 'glcma'}, {'ueran', 'geiae'}, {'ueran', 'eltae'}, {'ueran', 'gitay'}, {'ueran', 'iityo'}, {'ueran', 'latal'}, {'ueran', 'oonao'}, {'ueran', 'eytzs'}, {'ueran', 'iadei'}, {'ueran', 'gthwh'}, {'ueran', 'jtreo'}, {'ueran', 'elsao'}, {'ueran', 'iogsi'}, {'rtqze', 'ydoew'}, {'rtqze', 'andtr'}, {'rtqze', 'urzow'}, {'rtqze', 'wgoas'}, {'ojeho', 'urnor'}, {'ojeho', 'bbzna'}, {'ojeho', 'yvuje'}, {'ojeho', 'eetul'}, {'oawpv', 'egrkn'}, {'otzad', 'aoipa'}, {'otzad', 'seddz'}, {'otzad', 'ioemt'}, {'otzad', 'craan'}, {'rdore', 'erdmo'}, {'rdore', 'ueihq'}, {'rdore', 'lierg'}, {'ieheo', 'oiaau'}, {'ieheo', 'tpfru'}, {'ieheo', 'aunlo'}, {'ieheo', 'eewlo'}, {'ieheo', 'eslum'}, {'eorca', 'dabte'}, {'eorca', 'nadii'}, {'eorca', 'zebgn'}, {'uobne', 'qpndl'}, {'uobne', 'deixu'}, {'uobne', 'oanrr'}, {'uobne', 'ufbek'}, {'uobne', 'aennw'}, {'zzzzz', 'zzzzz'}], mainrec);

OUTPUT(DISTRIBUTE(set1, HASH(key)), , 'kd1.d00', OVERWRITE);
OUTPUT(DISTRIBUTE(set2, HASH(key)), , 'kd2.d00', OVERWRITE);

fprec := RECORD
    mainrec;
    UNSIGNED8 filepos{virtual(fileposition)};
END;

fset1 := DATASET('kd1.d00', fprec, FLAT);
fset2 := DATASET('kd2.d00', fprec, FLAT);

//these four work where key is a STRING5 or a STRING --- surely they should fail in the latter case?
BUILDINDEX(fset1, {key, filepos}, 'kd1key.idx', OVERWRITE);
BUILDINDEX(fset2, {key, filepos}, 'kd2key.idx', OVERWRITE);
BUILDINDEX(fset1, {key, value, filepos}, 'kd1all.idx', OVERWRITE);
BUILDINDEX(fset2, {key, value, filepos}, 'kd2all.idx', OVERWRITE);
//these two work if key is a STRING5 but fail (assert at hqltcppc.cpp line 2044) if it is a STRING:
//BUILDINDEX(fset1, {key, filepos}, {value}, 'kd1pld.idx', OVERWRITE);
//BUILDINDEX(fset2, {key, filepos}, {value}, 'kd2pld.idx', OVERWRITE);
