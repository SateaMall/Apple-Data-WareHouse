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


