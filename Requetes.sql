SELECT 
    M.siret,
    D.annee,
    SUM(V.prixTTC)
FROM 
    Vente V
JOIN 
    Magasin M ON V.siret = M.siret
JOIN 
    Dates D ON V.idDate = D.idDate
GROUP BY 
    M.siret, 
    D.annee
ORDER BY 
    M.siret, 
    D.annee;

SELECT 
    CASE 
        WHEN C.age <= 20 THEN '< 21'
        WHEN C.age BETWEEN 21 AND 30 THEN '21-30'
        WHEN C.age BETWEEN 31 AND 40 THEN '31-40'
        WHEN C.age BETWEEN 41 AND 50 THEN '41-50'
        WHEN C.age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '> 60'
    END AS TrancheAge,
    D.annee AS Annee,
    COUNT(*) AS Ventes
FROM 
    Vente V
JOIN 
    Client C ON V.idClient = C.idClient
JOIN 
    Dates D ON V.idDate = D.idDate
GROUP BY 
    TrancheAge, 
    D.annee
ORDER BY 
    D.annee,
    TrancheAge;

SELECT 
    P.nom,
    M.siret,
    D.annee,
    COUNT(*) AS Ventes
FROM 
    Vente V
JOIN 
    Produit P ON V.idProduit = P.idProduit
JOIN 
    Magasin M ON V.siret = M.siret
JOIN 
    Dates D ON V.idDate = D.idDate
GROUP BY 
    P.nom, 
    M.siret, 
    D.annee
ORDER BY 
    P.nom, 
    M.siret, 
    D.annee;

SELECT 
    P.nom,
    COUNT(*) AS TotalPurchases
FROM 
    Vente V
JOIN 
    Client C ON V.idClient = C.idClient
JOIN 
    Produit P ON V.idProduit = P.idProduit
WHERE 
    C.estEmploye = 'Y'
GROUP BY 
    P.nom
ORDER BY 
    TotalPurchases DESC;

SELECT 
    C.departement,
    V.note,
    SUM(V.prixHT) AS TotalSalesExclVAT
FROM 
    Vente V
JOIN 
    Magasin M ON V.siret = M.siret
JOIN 
    Client C ON V.idClient = C.idClient
WHERE 
    M.pays = 'France'
GROUP BY 
    C.departement, 
    V.note
ORDER BY 
    C.departement, 
    V.note;

SELECT
   COUNT(*) AS NbrTotaleVente,
   M.siret,   D.annee,
   M.superficie,
   M.NbEmploye
  
FROM
   Vente V
JOIN
   Magasin M ON V.siret = M.siret
JOIN
   Dates D ON S.idDate = D.idDate
GROUP BY
   M.siret,
   D.annee;
ORDER DESC
	NbrTotalVente;

SELECT
   COUNT(*) AS NbrTotaleVente,
   M.pays,
   E.salaire
   
FROM
   Vente V
JOIN
   Employe E ON V.idEmploye = E.idEmploye
JOIN
   Magasin M ON V.siret = M.siret
JOIN
   Dates D ON S.idDate = D.idDate
WHERE
	(E.role=’MANAGER’ OR E.role=’POLYVALENT’)
GROUP BY
   M.pays,
   E.salaire;

SELECT s.idProduit, s.siret, AVG(s.nbStock) AS MoyenneStocks
FROM Stocks s
JOIN Dates d ON s.idDate = d.idDate
WHERE d.periodePromotion = 'Y'
GROUP BY s.idProduit, s.siret;


SELECT s.idProduit, s.siret, d.mois, AVG(s.nbStock) AS MoyenneStocks
FROM Stocks s
JOIN Dates d ON s.idDate = d.idDate
JOIN EtatType et ON s.idEtat = et.idEtat
WHERE et.etat = 'neuf'
GROUP BY s.idProduit, s.siret, d.mois;

SELECT
   COUNT(*) AS NbrStock,
   P.nom AS ProductName,
   M.siret AS StoreID,
   D.annee AS Annee
   
FROM
   Stock S
JOIN
   Produit P ON S.idProduit = P.idProduit
JOIN
   Magasin M ON S.siret = M.siret
JOIN
   Dates D ON S.idDate = D.idDate
GROUP BY
   P.nom,
   M.siret,
   D.annee
;

SELECT 
    COALESCE(TO_CHAR(D.annee), 'Toutes les années') AS Annee,
    COALESCE(TO_CHAR(M.siret), 'Tous les magasins') AS Magasin,
    SUM(V.prixTTC) AS TotalRevenue,
    COUNT(*) AS TotalSales
FROM 
    Vente V
JOIN 
    Magasin M ON V.siret = M.siret
JOIN 
    Dates D ON V.idDate = D.idDate
GROUP BY 
    ROLLUP(D.annee, M.siret)
ORDER BY 
    D.annee, 
    M.siret;

SELECT 
    COALESCE(TO_CHAR(D.annee), 'Toutes les années') AS Annee,
    COALESCE(TO_CHAR(M.siret), 'Touts les magasins') AS Magasin,
    COALESCE(P.type, 'Tous les types') AS TypeProduit,
    SUM(V.prixTTC) AS ChiffresAffaires,
    COUNT(*) AS VentesTotales
FROM 
    Vente V
JOIN 
    Magasin M ON V.siret = M.siret
JOIN 
    Dates D ON V.idDate = D.idDate
JOIN 
    Produit P ON V.idProduit = P.idProduit
GROUP BY 
    CUBE(D.annee, M.siret, P.type)
ORDER BY 
    D.annee, 
    M.siret, 
    P.type;
    