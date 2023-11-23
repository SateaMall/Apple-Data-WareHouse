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

CREATE OR REPLACE VIEW MagasinStocks AS
SELECT *
FROM Dates;

CREATE TABLE EtatType (
    idEtat NUMBER PRIMARY KEY,
    etat VARCHAR2(50) UNIQUE,
    idType NUMBER,
    type VARCHAR2(50)
);
