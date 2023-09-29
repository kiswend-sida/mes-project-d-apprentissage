/*==============================================================*/
/* Nom de SGBD :  Sybase SQL Anywhere 11                        */
/* Date de cr�ation :  13/07/2023 15:59:29                      */
/*==============================================================*/




/*==============================================================*/
/* Table : CLASSE                                               */
/*==============================================================*/
create table CLASSE 
(
   IDCLASSE             integer                        not null,
   IDFILIERE            integer                        not null,
   LIBELLECLASSE        char(50)                       not null,
   constraint PK_CLASSE primary key (IDCLASSE)
);

/*==============================================================*/
/* Table : COCERNER1                                            */
/*==============================================================*/
create table COCERNER1 
(
   IDCOURS              integer                        not null,
   IDCLASSE             integer                        not null,
   constraint PK_COCERNER1 primary key (IDCOURS, IDCLASSE)
);

/*==============================================================*/
/* Table : COURS                                                */
/*==============================================================*/
create table COURS 
(
   IDCOURS              integer                        not null,
   LIBELLECOURS         char(50)                       not null,
   constraint PK_COURS primary key (IDCOURS)
);

/*==============================================================*/
/* Table : DISPENSER                                            */
/*==============================================================*/
create table DISPENSER 
(
   IDCOURS              integer                        not null,
   IDPROFESSEUR         integer                        not null,
   constraint PK_DISPENSER primary key (IDCOURS, IDPROFESSEUR)
);

/*==============================================================*/
/* Table : ETRE                                                 */
/*==============================================================*/
create table ETRE 
(
   IDCOURS              integer                        not null,
   IDTYPE               integer                        not null,
   constraint PK_ETRE primary key (IDCOURS, IDTYPE)
);

/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
create table ETUDIANT 
(
   IDETUDIANT           integer                        not null,
   IDCLASSE             integer                        not null,
   NOM_ETUDIANT         char(25)                       not null,
   PRENOM_ETUDIANT      char(50)                       not null,
   DATE_DE_NAISSANCE    integer                        not null,
   GENRE                char(1)                        not null,
   ABSENCE              char(10)                       not null,
   PRESENCE             char(10)                       not null,
   NOTE                 integer                        not null,
   EMAIL_ETUDIANT       char(60)                       not null,
   constraint PK_ETUDIANT primary key (IDETUDIANT)
);

/*==============================================================*/
/* Table : FILERE                                               */
/*==============================================================*/
create table FILERE 
(
   IDFILIERE            integer                        not null,
   LIBELLEFILIERE       char(50)                       not null,
   constraint PK_FILERE primary key (IDFILIERE)
);

/*==============================================================*/
/* Table : PROFESSEUR                                           */
/*==============================================================*/
create table PROFESSEUR 
(
   IDPROFESSEUR         integer                        not null,
   NOMDUPRO             char(25)                       not null,
   PRENOMDUPRO          char(50)                       not null,
   EMAILDUPRO           char(50)                       not null,
   constraint PK_PROFESSEUR primary key (IDPROFESSEUR)
);

/*==============================================================*/
/* Table : TYPE                                                 */
/*==============================================================*/
create table TYPE 
(
   IDTYPE               integer                        not null,
   LIBELLETYPE          char(50)                       not null,
   constraint PK_TYPE primary key (IDTYPE)
);

alter table CLASSE
   add constraint FK_CLASSE_CONCERNER_FILERE foreign key (IDFILIERE)
      references FILERE (IDFILIERE)
      on update restrict
      on delete restrict;

alter table COCERNER1
   add constraint FK_COCERNER_COCERNER1_COURS foreign key (IDCOURS)
      references COURS (IDCOURS)
      on update restrict
      on delete restrict;

alter table COCERNER1
   add constraint FK_COCERNER_COCERNER2_CLASSE foreign key (IDCLASSE)
      references CLASSE (IDCLASSE)
      on update restrict
      on delete restrict;

alter table DISPENSER
   add constraint FK_DISPENSE_DISPENSER_COURS foreign key (IDCOURS)
      references COURS (IDCOURS)
      on update restrict
      on delete restrict;

alter table DISPENSER
   add constraint FK_DISPENSE_DISPENSER_PROFESSE foreign key (IDPROFESSEUR)
      references PROFESSEUR (IDPROFESSEUR)
      on update restrict
      on delete restrict;

alter table ETRE
   add constraint FK_ETRE_ETRE_COURS foreign key (IDCOURS)
      references COURS (IDCOURS)
      on update restrict
      on delete restrict;

alter table ETRE
   add constraint FK_ETRE_ETRE2_TYPE foreign key (IDTYPE)
      references TYPE (IDTYPE)
      on update restrict
      on delete restrict;

alter table ETUDIANT
   add constraint FK_ETUDIANT_FREQUENTE_CLASSE foreign key (IDCLASSE)
      references CLASSE (IDCLASSE)
      on update restrict
      on delete restrict;

