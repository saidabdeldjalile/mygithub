create table Segment(
  aIP  VARCHAR(12)             ,
  nomSeg VARCHAR(25)   not null,
  etage  INTEGER   ,
  CONSTRAINT PK_seg PRIMARY KEY (aIP)
)
/
                /*SALLE*/

create table Salle (
  nSalle INTEGER ,
  nomSalle VARCHAR(25) not null,
  nbPoste INTEGER ,
  aIP  VARCHAR(12),
  CONSTRAINT PK_Salle PRIMARY KEY (nSalle),
  CONSTRAINT FK_seg foreign KEY (aIP) references (aIP) 
)
/

create table Poste(
   nPoste INTEGER ,
   nomPoste VARCHAR(25) not null,
   ad    INTEGER check(ad>0 and ad<255),
   Type ENUM('Unix', 'TX', 'PONS', 'PCNT'),
   CONSTRAINT PK_poste PRIMARY KEY (nPoste),
   CONSTRAINT FK_Pseg foreign KEY (aIP) references (aIP),
   CONSTRAINT FK_PSalle foreign KEY (nSalle) references (nSalle)  
)
/

