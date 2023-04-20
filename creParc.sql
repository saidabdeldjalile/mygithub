create table Segment(
  aIP  VARCHAR2(15)             ,
  nomSeg VARCHAR2(25)   not null,
  etage  VARCHAR2(25) ,
  CONSTRAINT PK_seg PRIMARY KEY (aIP)
)
/
                /*SALLE*/

create table Salle (
  nSalle VARCHAR2(25) ,
  nomSalle VARCHAR(25) not null,
  nbPoste INTEGER ,
  aIP  VARCHAR(12),
  CONSTRAINT PK_Salle PRIMARY KEY (nSalle)
)
/

create table Poste(
   nPoste VARCHAR2(25) ,
   nomPoste VARCHAR(25) not null,
   aIP  VARCHAR(12),
   ad    INTEGER check(ad>0 and ad<255),
   TypeP VARCHAR2(10) CHECK (TypeP IN ('UNIX', 'TX', 'PONS','PCNT')),
   nSalle VARCHAR2(25) ,
   CONSTRAINT PK_poste PRIMARY KEY (nPoste) 
)
/

create table Logiciel(
  nLog VARCHAR2(25),
  nomLog VARCHAR(20),
  dateAch Date ,
  ver number(3,2),
  TypeLog VARCHAR2(25) CHECK (TypeLog IN ('UNIX', 'TX', 'PONS','PCNT')),
  prix INTEGER check(prix>0),
  CONSTRAINT PK_Log PRIMARY KEY (nLog)
)
/

create table Installer(
  nPoste VARCHAR2(25) ,
  nLog VARCHAR2(25),
  numIns INTEGER,
  dateIns Date default sysdate,
  delai Date  default sysdate,
  CONSTRAINT PK_Installer PRIMARY KEY (nPoste,nLog)
)
/
create table Types(
 TypeLp VARCHAR(30),
 nomType VARCHAR2(25)CHECK (nomType IN ('Terminal X-Windows', 'Systeme UNIX', 'PC Windows NT','PC Windows','Network')), 
  CONSTRAINT PK_Type PRIMARY KEY (TypeLp)
)
/




