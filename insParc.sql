
INSert INTO Segment VALUES('130.120.80','brin','RDC');
INSert INTO Segment VALUES('130.120.81','brin','1 etage');
INSert INTO Segment VALUES('130.120.82','brin','2 etage');

INSert INTO Salle ('S01','Salle1',3,'130.120.80');
INSert INTO Salle ('S02','Salle1',2,'130.120.80'); 
INSert  INTO Salle ('S03','Salle1',2,'130.120.80');
INSert INTO Salle VALUES('S11','Salle1',2,'130.120.81');
INSert INTO Salle VALUES('S12','Salle1',1,'130.120.81');
INSert INTO Salle VALUES('S21','Salle1',2,'130.120.82');
INSert INTO Salle VALUES('S22','Salle1',0,'130.120.83');
INSert INTO Salle VALUES('S23','Salle1',0,'130.120.83');

INSert INTO Poste VALUES('p1','poste 1','130.120.80',1,'TX','S01');
INSert INTO Poste VALUES('p2','poste 2','130.120.80',2,'UNIX','S01');
INSert INTO Poste VALUES('p3','poste 3','130.120.80',3,'TX','S01');
INSert INTO Poste VALUES('p4','poste 4','130.120.80',4,'PCWS','S02');
INSert INTO Poste VALUES('p5','poste 5','130.120.80',5,'PCWS','S02');
INSert INTO Poste VALUES('p6','poste 6','130.120.80',6,'UNIX','S03');
INSert INTO Poste VALUES('p7','poste 7','130.120.80',7,'TX','S03');
INSert INTO Poste VALUES('p8','poste 8','130.120.81',1,'UNIX','S11');
INSert INTO Poste VALUES('p9','poste 9','130.120.81',2,'TX','S11');
INSert INTO Poste VALUES('p10','poste 10','130.120.81',3,'UNIX','S12');
INSert INTO Poste VALUES('p11','poste 11','130.120.82',1,'PCNT','S21');
INSert INTO Poste VALUES('p12','poste 12','130.120.82',2,'PCWS','S21');

INSert INTO Logiciel VALUES('log1','oracle 6',to_date('1995-05-13','YYYY-MM-DD'),6.2,'UNIX',3000);
INSert INTO Logiciel VALUES('log2','oracle 8',to_date('1999-09-15','YYYY-MM-DD'),6.2,'UNIX',3000);
INSert INTO Logiciel VALUES('log3','SQL Server',to_date('1998-04-12','YYYY-MM-DD'),6.2,'PCNT',3000);
INSert INTO Logiciel VALUES('log4','Front Page',to_date('1997-06-03','YYYY-MM-DD'),6.2,'PCWS',3000);
INSert INTO Logiciel VALUES('log5','WinDev',to_date('1997-05-12','YYYY-MM-DD'),6.2,'PCWS',3000);
INSert INTO Logiciel VALUES('log6','SQL*Net',NULL,6.2,'UNIX',3000);
INSert INTO Logiciel VALUES('log7','LLS',to_date('2002-04-12','YYYY-MM-DD'),6.2,'PCNT',3000);
INSert INTO Logiciel VALUES('log8','Dream Weaver',to_date('2003-09-21','YYYY-MM-DD'),6.2,'BeOS',3000);



INSert INTO Types VALUES('TX','Terminal X-Windows');
INSert INTO Types VALUES('UNIX','Systeme UNIX');
INSert INTO Types VALUES('PCNT','PC Windows NT');
INSert INTO Types VALUES('PCWS','PC Windows');
INSert INTO Types VALUES('NC','Network');

INSert INTO Installer VALUES('p2','log1',1,to_date('2003-05-15','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p2','log2',2,to_date('2003-09-07','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p4','log5',3,null,null);
INSert INTO Installer VALUES('p6','log6',4,to_date('2003-05-20','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p6','log1',5,to_date('2003-05-20','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p8','log2',6,to_date('2003-05-19','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p8','log6',7,to_date('2003-05-20','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p11','log3',8,to_date('2003-04-20','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p12','log4',9,to_date('2003-04-20','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p11','log7',10,to_date('2003-04-20','YYYY-MM-DD'),null);
INSert INTO Installer VALUES('p7','log7',11,to_date('2002-04-01','YYYY-MM-DD'),null);






 
