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

StringLib := SERVICE : PLUGIN('unknown\\stringlib.dll','STRINGLIB 1.1.14')
  string8 GetDateYYYYMMDD() : c,once,entrypoint='slGetDateYYYYMMDD2';
END;

zzz := StringLib;

loadxml('<AA><BB>1</BB><CC>2</CC></AA>');

#DECLARE (y)

#SET (y, zzz.GetDateYYYYMMDD()[1..4])

%'y'%;
(string10)zzz.GetDateYYYYMMDD();
