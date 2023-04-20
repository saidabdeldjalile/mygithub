
UPDATE Segment 
set etage='RDC'
WHERE aIP = '130.120.80' and etage = null ;


UPDATE Segment 
set etage='1 etage'
WHERE aIP = '130.120.81' and etage = null ;

UPDATE Segment 
set etage='2 etage'
WHERE aIP = '130.120.82' and etage = null ;

UPDATE Logiciel 
set prix= prix*0.9
WHERE TypeLog='PCNT';

describe Logiciel;
