CREATE TABLE region(
	ID_region    INT IDENTITY (1,1) NOT NULL ,
	Nom_region   CHAR (50)  NOT NULL  ,
	CONSTRAINT region_PK PRIMARY KEY (ID_region)
);


/*------------------------------------------------------------
-- Table: groupe_sanguin
------------------------------------------------------------*/
CREATE TABLE groupe_sanguin(
	ID_groupe_sanguin   INT IDENTITY (1,1) NOT NULL ,
	Nom_groupe          VARCHAR (50) NOT NULL  ,
	CONSTRAINT groupe_sanguin_PK PRIMARY KEY (ID_groupe_sanguin)
);


/*------------------------------------------------------------
-- Table: Don
------------------------------------------------------------*/
CREATE TABLE Don(
	ID_DON     INT IDENTITY (1,1) NOT NULL ,
	DATE_DON   DATETIME NOT NULL  ,
	CONSTRAINT Don_PK PRIMARY KEY (ID_DON)
);


/*------------------------------------------------------------
-- Table: ville
------------------------------------------------------------*/
CREATE TABLE ville(
	ID_ville    INT IDENTITY (1,1) NOT NULL ,
	nom_ville   Varchar(50)  NOT NULL ,
	ID_region   INT  NOT NULL  ,
	CONSTRAINT ville_PK PRIMARY KEY (ID_ville)
);


/*------------------------------------------------------------
-- Table: volontaire
------------------------------------------------------------*/
CREATE TABLE volontaire(
	ID_volontiaire      VARCHAR (50) NOT NULL ,
	prenom              VARCHAR (50)  NOT NULL ,
	nom                 VARCHAR (50)  NOT NULL ,
	tel                 INT  NOT NULL ,
	age                 VARCHAR (50) NOT NULL ,
	email               VARCHAR (50) NOT NULL ,
	ID_groupe_sanguin   INT  NOT NULL ,
	ID_ville            INT  NOT NULL ,
	ID_login            VARCHAR (50) NOT NULL  ,
	CONSTRAINT volontaire_PK PRIMARY KEY (ID_volontiaire)
);


/*------------------------------------------------------------
-- Table: beneficiaire
------------------------------------------------------------*/
CREATE TABLE beneficiaire(
	ID_beneficiaire   VARCHAR (50) NOT NULL ,
	prenom            VARCHAR (50)  NOT NULL ,
	nom               VARCHAR (50)  NOT NULL ,
	tel               INT  NOT NULL ,
	age               INT  NOT NULL ,
	email             VARCHAR (50) NOT NULL ,
	ID_login          VARCHAR (50) NOT NULL  ,
	CONSTRAINT beneficiaire_PK PRIMARY KEY (ID_beneficiaire)
);


/*------------------------------------------------------------
-- Table: Compte
------------------------------------------------------------*/
CREATE TABLE Compte(
	ID_login          VARCHAR (50) NOT NULL ,
	login             VARCHAR (50) NOT NULL ,
	mot_de_passe      VARCHAR (50) NOT NULL ,
	CONSTRAINT Compte_PK PRIMARY KEY (ID_login)
);


/*------------------------------------------------------------
-- Table: faire
------------------------------------------------------------*/
CREATE TABLE faire(
	ID_volontiaire    VARCHAR (50) NOT NULL ,
	ID_DON            INT  NOT NULL ,
	ID_beneficiaire   VARCHAR (50) NOT NULL  ,
	CONSTRAINT faire_PK PRIMARY KEY (ID_volontiaire,ID_DON,ID_beneficiaire)
);




ALTER TABLE ville
	ADD CONSTRAINT ville_region0_FK
	FOREIGN KEY (ID_region)
	REFERENCES region(ID_region);

ALTER TABLE volontaire
	ADD CONSTRAINT volontaire_groupe_sanguin0_FK
	FOREIGN KEY (ID_groupe_sanguin)
	REFERENCES groupe_sanguin(ID_groupe_sanguin);

ALTER TABLE volontaire
	ADD CONSTRAINT volontaire_ville1_FK
	FOREIGN KEY (ID_ville)
	REFERENCES ville(ID_ville);

ALTER TABLE volontaire
	ADD CONSTRAINT volontaire_Compte2_FK
	FOREIGN KEY (ID_login)
	REFERENCES Compte(ID_login);

ALTER TABLE volontaire 
	ADD CONSTRAINT volontaire_Compte0_AK 
	UNIQUE (ID_login);

ALTER TABLE beneficiaire
	ADD CONSTRAINT beneficiaire_Compte0_FK
	FOREIGN KEY (ID_login)
	REFERENCES Compte(ID_login);

ALTER TABLE beneficiaire 
	ADD CONSTRAINT beneficiaire_Compte0_AK 
	UNIQUE (ID_login);

ALTER TABLE faire
	ADD CONSTRAINT faire_volontaire0_FK
	FOREIGN KEY (ID_volontiaire)
	REFERENCES volontaire(ID_volontiaire);

ALTER TABLE faire
	ADD CONSTRAINT faire_Don1_FK
	FOREIGN KEY (ID_DON)
	REFERENCES Don(ID_DON);

ALTER TABLE faire
	ADD CONSTRAINT faire_beneficiaire2_FK
	FOREIGN KEY (ID_beneficiaire)
	REFERENCES beneficiaire(ID_beneficiaire);
