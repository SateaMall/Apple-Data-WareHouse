CREATE OR REPLACE VIEW ProduitStocks AS
SELECT 
    idProduit, 
    nom, 
    couleur, 
    generation, 
    modele, 
    capaciteStockage, 
    dateSortie, 
    prixInitial, 
    garantie, 
    version
FROM Produit;

CREATE OR REPLACE VIEW MagasinStocks AS
SELECT *
FROM Magasin;

CREATE OR REPLACE VIEW DatesStocks AS
SELECT *
FROM Dates;

CREATE TABLE EtatType (
    idEtat  NUMBER(10) ,
    etat VARCHAR2(50) CHECK (etat IN ('neuf', 'reconditionne')),
    idType  NUMBER(10),
    type VARCHAR2(50) CHECK (type IN ('smartphone', 'ordinateur', 'ecouteurs', 'tablette')),
    PRIMARY KEY(idEtat, idType)
);

CREATE TABLE Stocks (
    idProduit VARCHAR2(20),
    siret NUMBER(10),
    idDate NUMBER(10),
    idEtat NUMBER(10),
    idType NUMBER(10),
    nbStock NUMBER(10),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (siret) REFERENCES Magasin(siret),
    FOREIGN KEY (idDate) REFERENCES Dates(idDate),
    FOREIGN KEY (idEtat, idType) REFERENCES EtatType(idEtat, idType),
    PRIMARY KEY (idProduit, siret, idDate, idEtat,idType)
);
