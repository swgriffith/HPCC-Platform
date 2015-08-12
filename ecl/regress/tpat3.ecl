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

//See pp231-> of dragon.

r := record
  string line;
  end;

d := dataset([
{'ccccdcccd'},
{'cccd'},
{'dcccd'},
{''}],r);


//Example comes from Dragon pp218->

rule C := 'c' self
        | 'd'
        ;

rule S := C C
        ;

results :=
    record
        string Le :=  '!'+MATCHTEXT(S)+'!';
        string tree := 'Tree: '+parseLib.getParseTree();
    end;

outfile1 := PARSE(d,line,S,results,first,whole,parse);

output(outfile1);

