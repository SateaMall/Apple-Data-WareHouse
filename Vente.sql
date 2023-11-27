prompt "Suppression des tables"
	
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Stocks';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/
	
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Vente';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/

BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Magasin';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Produit';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/

BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Dates';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/

BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Client';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE Employe';
EXCEPTION
 WHEN OTHERS THEN
	IF SQLCODE != -942 THEN
	RAISE;
	END IF;
END;
/

prompt "creation des tables"


CREATE TABLE Employe (
    idEmploye NUMBER(10) PRIMARY KEY, 
    nom VARCHAR2(50),
    prenom VARCHAR2(50),
    role VARCHAR2(50) CHECK (role IN ('CHEF', 'MANAGER', 'POLYVALENT')),
    dateEmbauche DATE,
    salaire NUMBER(10, 2),
    formation NUMBER(2),
    heureContrat NUMBER(2),
    email VARCHAR2(100),
    dateNaissance DATE
);


CREATE TABLE Magasin (
    siret NUMBER(10) PRIMARY KEY,
    ville VARCHAR2(50),
    codePostal VARCHAR2(10),
    pays VARCHAR2(50),
    nbEmployes NUMBER(10),
    superficie NUMBER(12,1),
    heureOuverture NUMBER(2),  
    heureFermeture NUMBER(2),
    dateOuverture DATE
);


CREATE TABLE Produit (
    idProduit VARCHAR2(20) PRIMARY KEY,
    nom VARCHAR2(50),
    couleur VARCHAR2(20) CHECK (couleur IN ('rouge', 'blanc', 'noir', 'gris','blue' )),
    generation VARCHAR2(20),
    type VARCHAR2(50) CHECK (type IN ('smartphone', 'ordinateur', 'ecouteurs', 'tablette')),
    modele VARCHAR2(50),
    capaciteStockage NUMBER(10),
    dateSortie DATE,
    prixInitial NUMBER(10),
    garantie NUMBER(2),
    version VARCHAR2(50)
);


CREATE TABLE Dates (
    idDate NUMBER(8) PRIMARY KEY,
    dates DATE UNIQUE,
    jourSemaine NUMBER(1),
    semaine NUMBER(2),
    mois NUMBER(2),
    trimestre NUMBER(1),
    annee NUMBER(4),
    jourFerie CHAR(1) CHECK (jourFerie IN ('Y', 'N')),
    periodePromotion CHAR(1) CHECK (periodePromotion IN ('Y', 'N')),
    saison VARCHAR2(20)
);

CREATE TABLE Client (
    idClient NUMBER(10) PRIMARY KEY,
    nom VARCHAR2(50),
    prenom VARCHAR2(50),
    age NUMBER(3),
    dateNaissance DATE,
    sexe CHAR(1) CHECK (sexe IN ('H', 'F', 'N')), 
    categorieProfessionnelle VARCHAR2(50),
    revenuAnnuel NUMBER(15, 0),
    email VARCHAR2(100),
    villeResidence VARCHAR2(50),
    pays VARCHAR2(50),
    departement VARCHAR2(50),
    estEmploye CHAR(1) CHECK (estEmploye IN ('Y', 'N'))
);

CREATE TABLE Vente (
    idVente NUMBER(10), 
    idProduit VARCHAR2(20),
    siret NUMBER(10),
    idEmploye NUMBER(10),
    idClient NUMBER(10),
    idDate NUMBER(8),
    prixTTC NUMBER(10, 2),
    prixHT NUMBER(10, 2),
    note NUMBER(1, 0) CHECK (note BETWEEN 0 AND 5 OR note IS NULL),
    PRIMARY KEY (idProduit, siret, idEmploye, idClient, IdDate, idVente),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (siret) REFERENCES Magasin(siret),
    FOREIGN KEY (idEmploye) REFERENCES Employe(idEmploye),
    FOREIGN KEY (idClient) REFERENCES Client(idClient),
    FOREIGN KEY (idDate) REFERENCES Dates(idDate)
);
