#option('THOR_ROWCRC', 0); // don/t need individual row CRCs
 
rec := record
      string10  key;
      string10  seq;
      string80  fill;
       end;
 
in := DATASET('russell::terasort1',rec,FLAT);
OUTPUT(SORT(in,key,UNSTABLE),,'russell::terasort1out',overwrite);