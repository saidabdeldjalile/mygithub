alter table Poste
add foreign key(aIP) REFERENCES Segment(aIP);

desc  Poste;

alter table Poste
add foreign key(nSalle) REFERENCES Salle(nSalle);

desc  Poste;

alter table Installer
add foreign key(nPoste) REFERENCES Poste(nPoste);

desc Installer;


alter table Installer
add foreign key(nLog) REFERENCES Logiciel(nLog);

alter table Poste 
add constraint FK_POSTE foreign key(TypeP) references Types(typeLp);

