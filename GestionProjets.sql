create database gestionprojets;
use gestionprojets;
create table projets(
id_projet int primary key,
nom_projet varchar(50),
description_projet varchar(50),
date_debut_projet date,
date_fin_projet date,
budjet_tache decimal(10,2)
);
create table taches(
id_tache int primary key,
id_projet int,
description_tache varchar(200),
date_debut_tache date,
date_fin_tache date,
foreign key (id_projet) references projets (id_projet)
);
create table ressources(
id_ressource int primary key,
id_tache int,
nom_ressources varchar(100),
type_ressources varchar(100),
quantite_ressources decimal(10,2),
information_fournisseur varchar(200),
foreign key (id_tache) references taches (id_tache)
);
create table assignation(
id_assignation int primary key,
id_tache int,
id_ressource int,
quantite_assignee int,
foreign key (id_ressource) references ressources(id_ressource),
foreign key (id_tache) references taches(id_tache)
);
