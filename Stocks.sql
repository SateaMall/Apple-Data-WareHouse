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
    idEtat NUMBER PRIMARY KEY,
    etat VARCHAR2(50) UNIQUE,
    idType NUMBER,
    type VARCHAR2(50)
);

CREATE TABLE Stocks (
    idProduit VARCHAR2(20),
    siret VARCHAR2(20),
    idDate NUMBER,
    idEtat NUMBER,
    nbStock NUMBER,

    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (siret) REFERENCES Magasin(siret),
    FOREIGN KEY (idDate) REFERENCES Dates(date),
    FOREIGN KEY (idEtat) REFERENCES EtatType(idEtat),

    PRIMARY KEY (idProduit, siret, idDate, idEtat)
);
