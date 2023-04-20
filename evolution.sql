SQL> alter table Segment add nbSalle integer;

Table modifiée.

SQL> alter table Segment add nbPoste integer;

Table modifiée.

SQL> alter table Logiciel add nbInstall integer;

Table modifiée.

SQL> alter table Poste add nbLog integer;

Table modifiée.

SQL> select * from Segment;

AIP             NOMSEG                    ETAGE                        NBSALLE  
--------------- ------------------------- ------------------------- ----------  
   NBPOSTE                                                                      
----------                                                                      
130.120.80      brin                      RDC                                   
                                                                                
                                                                                
130.120.81      brin                      1 etage                               
                                                                                
                                                                                
130.120.82      brin                      2 etage                               
                                                                                
                                                                                

SQL> select * from Salle;

NSALLE                    NOMSALLE                     NBPOSTE AIP              
------------------------- ------------------------- ---------- ------------     
S11                       Salle1                             2 130.120.81       
S12                       Salle1                             1 130.120.81       
S21                       Salle1                             2 130.120.82       
S22                       Salle1                             0 130.120.83       
S23                       Salle1                             0 130.120.83       

SQL> select * from Poste;

NPOSTE                    NOMPOSTE                  AIP                  AD     
------------------------- ------------------------- ------------ ----------     
TYPEP      NSALLE                         NBLOG                                 
---------- ------------------------- ----------                                 
p8                        poste 8                   130.120.81            1     
UNIX       S11                                                                  
                                                                                
p9                        poste 9                   130.120.81            2     
TX         S11                                                                  
                                                                                
p10                       poste 10                  130.120.81            3     
UNIX       S12                                                                  
                                                                                

NPOSTE                    NOMPOSTE                  AIP                  AD     
------------------------- ------------------------- ------------ ----------     
TYPEP      NSALLE                         NBLOG                                 
---------- ------------------------- ----------                                 
p11                       poste 11                  130.120.82            1     
PCNT       S21                                                                  
                                                                                

SQL> select * from Logiciel;

NLOG                      NOMLOG               DATEACH         VER              
------------------------- -------------------- -------- ----------              
TYPELOG                         PRIX  NBINSTALL                                 
------------------------- ---------- ----------                                 
log1                      oracle 6             13/05/95        6,2              
UNIX                            3000                                            
                                                                                
log2                      oracle 8             15/09/99        6,2              
UNIX                            3000                                            
                                                                                
log3                      SQL Server           12/04/98        6,2              
PCNT                            3000                                            
                                                                                

NLOG                      NOMLOG               DATEACH         VER              
------------------------- -------------------- -------- ----------              
TYPELOG                         PRIX  NBINSTALL                                 
------------------------- ---------- ----------                                 
log6                      SQL*Net                              6,2              
UNIX                            3000                                            
                                                                                
log7                      LLS                  12/04/02        6,2              
PCNT                            3000                                            
                                                                                

SQL> select * from Installer;

NPOSTE                    NLOG                          NUMINS DATEINS  DELAI   
------------------------- ------------------------- ---------- -------- --------
p8                        log2                               6 19/05/03         
p8                        log6                               7 20/05/03         
p11                       log3                               8 20/04/03         
p11                       log7                              10 20/04/03         

SQL> select * from Types;

TYPELP                         NOMTYPE                                          
------------------------------ -------------------------                        
TX                             Terminal X-Windows                               
UNIX                           Systeme UNIX                                     
PCNT                           PC Windows NT                                    
PCWS                           PC Windows                                       
NC                             Network                                          

SQL> desc Segment;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 AIP                                       NOT NULL VARCHAR2(15)
 NOMSEG                                    NOT NULL VARCHAR2(25)
 ETAGE                                              VARCHAR2(25)
 NBSALLE                                            NUMBER(38)
 NBPOSTE                                            NUMBER(38)

SQL> desc Salle;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 NSALLE                                    NOT NULL VARCHAR2(25)
 NOMSALLE                                  NOT NULL VARCHAR2(25)
 NBPOSTE                                            NUMBER(38)
 AIP                                                VARCHAR2(12)

SQL> desc Poste;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 NPOSTE                                    NOT NULL VARCHAR2(25)
 NOMPOSTE                                  NOT NULL VARCHAR2(25)
 AIP                                                VARCHAR2(12)
 AD                                                 NUMBER(38)
 TYPEP                                              VARCHAR2(10)
 NSALLE                                             VARCHAR2(25)
 NBLOG                                              NUMBER(38)

SQL> desc Logiciel;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 NLOG                                      NOT NULL VARCHAR2(25)
 NOMLOG                                             VARCHAR2(20)
 DATEACH                                            DATE
 VER                                                NUMBER(3,2)
 TYPELOG                                            VARCHAR2(25)
 PRIX                                               NUMBER(38)
 NBINSTALL                                          NUMBER(38)

SQL> desc Installer;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 NPOSTE                                    NOT NULL VARCHAR2(25)
 NLOG                                      NOT NULL VARCHAR2(25)
 NUMINS                                             NUMBER(38)
 DATEINS                                            DATE
 DELAI                                              DATE

SQL> desc Types;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 TYPELP                                    NOT NULL VARCHAR2(30)
 NOMTYPE                                            VARCHAR2(25)

SQL> alter table Salle modify nomSalle varchar2(30);

Table modifiée.

SQL> alter table Segment modify namSegment varchar2(15);
alter table Segment modify namSegment varchar2(15)
                           *
ERREUR à la ligne 1 :
ORA-00904: "NAMSEGMENT" : identificateur non valide 


SQL> alter table Segment modify nomSeg varchar2(15);

Table modifiée.

SQL> alter table Segment modify nomSeg varchar2(3);
alter table Segment modify nomSeg varchar2(3)
                           *
ERREUR à la ligne 1 :
ORA-01441: impossible de diminuer la largeur de colonne : certaines valeurs 
sont trop élevées 


SQL> desc Segment;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 AIP                                       NOT NULL VARCHAR2(15)
 NOMSEG                                    NOT NULL VARCHAR2(15)
 ETAGE                                              VARCHAR2(25)
 NBSALLE                                            NUMBER(38)
 NBPOSTE                                            NUMBER(38)

SQL> desc Salle;
 Nom                                       NULL ?   Type
 ----------------------------------------- -------- ----------------------------
 NSALLE                                    NOT NULL VARCHAR2(25)
 NOMSALLE                                  NOT NULL VARCHAR2(30)
 NBPOSTE                                            NUMBER(38)
 AIP                                                VARCHAR2(12)

SQL> select * from Segment;

AIP             NOMSEG          ETAGE                        NBSALLE    NBPOSTE 
--------------- --------------- ------------------------- ---------- ---------- 
130.120.80      brin            RDC                                             
130.120.81      brin            1 etage                                         
130.120.82      brin            2 etage                                         

SQL> select * from Salle;

NSALLE                    NOMSALLE                          NBPOSTE AIP         
------------------------- ------------------------------ ---------- ------------
S11                       Salle1                                  2 130.120.81  
S12                       Salle1                                  1 130.120.81  
S21                       Salle1                                  2 130.120.82  
S22                       Salle1                                  0 130.120.83  
S23                       Salle1                                  0 130.120.83  

SQL> select * from Poste;

NPOSTE                    NOMPOSTE                  AIP                  AD     
------------------------- ------------------------- ------------ ----------     
TYPEP      NSALLE                         NBLOG                                 
---------- ------------------------- ----------                                 
p8                        poste 8                   130.120.81            1     
UNIX       S11                                                                  
                                                                                
p9                        poste 9                   130.120.81            2     
TX         S11                                                                  
                                                                                
p10                       poste 10                  130.120.81            3     
UNIX       S12                                                                  
                                                                                

NPOSTE                    NOMPOSTE                  AIP                  AD     
------------------------- ------------------------- ------------ ----------     
TYPEP      NSALLE                         NBLOG                                 
---------- ------------------------- ----------                                 
p11                       poste 11                  130.120.82            1     
PCNT       S21                                                                  
                                                                                

SQL> select * from Logiciel;

NLOG                      NOMLOG               DATEACH         VER              
------------------------- -------------------- -------- ----------              
TYPELOG                         PRIX  NBINSTALL                                 
------------------------- ---------- ----------                                 
log1                      oracle 6             13/05/95        6,2              
UNIX                            3000                                            
                                                                                
log2                      oracle 8             15/09/99        6,2              
UNIX                            3000                                            
                                                                                
log3                      SQL Server           12/04/98        6,2              
PCNT                            3000                                            
                                                                                

NLOG                      NOMLOG               DATEACH         VER              
------------------------- -------------------- -------- ----------              
TYPELOG                         PRIX  NBINSTALL                                 
------------------------- ---------- ----------                                 
log6                      SQL*Net                              6,2              
UNIX                            3000                                            
                                                                                
log7                      LLS                  12/04/02        6,2              
PCNT                            3000                                            
                                                                                

SQL> select * from Installer;

NPOSTE                    NLOG                          NUMINS DATEINS  DELAI   
------------------------- ------------------------- ---------- -------- --------
p8                        log2                               6 19/05/03         
p8                        log6                               7 20/05/03         
p11                       log3                               8 20/04/03         
p11                       log7                              10 20/04/03         

SQL> select * from Types;

TYPELP                         NOMTYPE                                          
------------------------------ -------------------------                        
TX                             Terminal X-Windows                               
UNIX                           Systeme UNIX                                     
PCNT                           PC Windows NT                                    
PCWS                           PC Windows                                       
NC                             Network                                          

SQL> spool off
