-- Cette requête nous permet d’avoir une évolution au fil du temps des statistiques de ventes du magasin. Il sera possible d’analyser si certains magasins sont en déclin au fil du temps. --
-- Requête SQL : --
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



-- Cette requête nous permet d’analyser les ventes en fonction de l’âge du client. Ainsi, il sera plus simple de cibler les publicités et les futures ventes. Il est intéressant de les classer par année pour analyser les ventes en fonction de la tranche d’âge au fil du temps : savoir si nos clients sont de plus en plus jeunes par exemple. --
-- Requête SQL : --
SELECT 
    CASE 
        WHEN C.age <= 20 THEN 'Under 21'
        WHEN C.age BETWEEN 21 AND 30 THEN '21-30'
        WHEN C.age BETWEEN 31 AND 40 THEN '31-40'
        WHEN C.age BETWEEN 41 AND 50 THEN '41-50'
        WHEN C.age BETWEEN 51 AND 60 THEN '51-60'
        ELSE 'Over 60'
    END AS AgeGroup,
    EXTRACT(YEAR FROM D.dates) AS Year,
    COUNT(*) AS TotalSales
FROM 
    Vente V
JOIN 
    Client C ON V.idClient = C.idClient
JOIN 
    Dates D ON V.idDate = D.idDate
GROUP BY 
    CASE 
        WHEN C.age <= 20 THEN 'Under 21'
        WHEN C.age BETWEEN 21 AND 30 THEN '21-30'
        WHEN C.age BETWEEN 31 AND 40 THEN '31-40'
        WHEN C.age BETWEEN 41 AND 50 THEN '41-50'
        WHEN C.age BETWEEN 51 AND 60 THEN '51-60'
        ELSE 'Over 60'
    END,
    EXTRACT(YEAR FROM D.dates)
ORDER BY 
    Year, 
    AgeGroup;



-- Afficher le nombre de ventes par produit, par magasin, et par année. --
-- Cette requête permet de gérer le stock d’un produit, par magasin et par année. Elle est généraliste, mais permettra de faire un lien avec la moyenne du nombre de stock par produit, par magasin et par année. -- 
-- Requête SQL : --
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



-- Afficher le nom des produits et le nombre total d’achat de ces produits, des clients qui sont employés d'Apple. Afficher les résultats par produit, classés par ordre descendant de ventes. (le produit le plus acheté par un client qui est aussi employé, au moins acheté). --
-- Cette requête permet de voir si les employés Apple (qui sont donc connaisseurs) achètent les produits Apple. Ainsi, il est possible de voir les préférences d’achats des clients-employés qui connaissent parfaitement les produits. --
-- Requête SQL : --
SELECT
   P.nom,
   COUNT(*) AS Achats
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
   Achats DESC;



-- Afficher la somme totale Hors taxes de ventes générée en France par note et département du client. --
-- Cette requête permet d’analyser le chiffre d'affaires réalisé en France en fonction des notes attribuées et du département du client. --
-- On utilise le département pour avoir une analyse plus fine de note. --
-- Car on suppose que la note varie en fonction de l’humeur et l’exigence du client, et bien souvent le département influe sur l’humeur générale et l’exigence de sa population. La région parisienne a la réputation d’avoir des clients de moins bonne humeur et plus exigeants que l'Hérault par exemple. --
-- Requête SQL: --
SELECT
   C.departement,
   V.note,
   SUM(V.prixHT) AS HorsTaxe
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


 
-- Afficher le nombre total de ventes, la superficie et le nombre d'employés par magasin et année dans un ordre descendant de ventes. --
-- Cette requête permet d’analyser par magasin le nombre de vente, et de faire des liens entre leur superficie et leur nombre d'employés. Il est également possible d’analyser les tendances en regardant les différences entres années. --
-- Requête SQL : -- 
SELECT
  COUNT(*) AS NbrTotaleVente,
  M.siret,
  D.annee,
  M.superficie,
  M.nbEmployes
FROM
  Vente V
JOIN
  Magasin M ON V.siret = M.siret
JOIN
  Dates D ON V.idDate = D.idDate
GROUP BY
  M.siret,
  D.annee,
  M.superficie,
  M.nbEmployes
ORDER BY 
  M.superficie DESC,
  NbrTotaleVente DESC;


-- Afficher le nombre moyen de stocks par produit, par magasin pendant les période de promotion --
-- Cette requête permet d’analyser l’impact de la période de promotion sur les stocks des magasins. --
-- Requête SQL : --
SELECT s.idProduit, s.siret, AVG(s.nbStock) AS MoyenneStocks
FROM Stocks s
JOIN Dates d ON s.idDate = d.idDate
WHERE d.periodePromotion = 'Y'
GROUP BY s.idProduit, s.siret;


-- Afficher la moyenne du nombre de stocks par produit, par magasin et par mois pour des produits neufs. -- 
-- Cette requête nous permet d’optimiser la gestion des produits neufs. Il est important d’avoir toujours un stock de produits neuf car c’est un gage de qualité. --
-- Requête SQL : --
SELECT s.idProduit, s.siret, d.mois, AVG(s.nbStock) AS MoyenneStocks
FROM Stocks s
JOIN Dates d ON s.idDate = d.idDate
JOIN EtatType et ON s.idEtat = et.idEtat
WHERE et.etat = 'neuf'
GROUP BY s.idProduit, s.siret, d.mois;



-- Afficher les stocks moyen par produit, par année, par magasin. --
-- Cette requête est généraliste, mais permettra de faire un lien avec le nombre de vente par produit, par année et par magasin --
-- Requête SQL : --
SELECT
  COUNT(*) AS NbrStock,
  P.nom AS ProductName,
  M.siret AS StoreID,
  D.annee AS Annee
FROM
  Stocks S
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
ORDER BY
   M.siret;



-- Calculez le chiffre d'affaires total et le nombre de ventes par année et par magasin, avec des sous-totaux pour chaque année et un total général pour tous les magasins et toutes les années. --
-- Cette requête permet de faire des analyses précise sur les performances des magasins. Il est également possible de voir les tendances d’un année à l’autre. --
-- Requête SQL : --
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



-- Analyser les ventes totales et le chiffre d'affaires dans différentes dimensions : par année, par magasin et par type de produit. -- 
-- Requête SQL : --
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



-- Calculer le nombre total de vente d’un produit par couleur du produit et par sexe du client. --
-- Cette requête permet d’analyser les preferences des clients en fonction de leur sexe,  et permettera de faire des futurs campagne de publicité plus ciblées. --
-- Requête SQL : --
SELECT
  COUNT(*) AS NbrVente,
  P.couleur AS CouleurProduit,
  C.sexe AS SexeClient
FROM
  Vente V
JOIN
  Produit P ON V.idProduit = P.idProduit
JOIN
  Client C ON V.idClient = C.idClient
GROUP BY
  P.couleur,
  C.sexe
;





