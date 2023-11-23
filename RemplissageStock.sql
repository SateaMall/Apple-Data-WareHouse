
------- Etat -------
-- Combinaisons pour 'neuf'
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (1, 'neuf', 101, 'smartphone');
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (1, 'neuf', 102, 'ordinateur');
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (1, 'neuf', 103, 'ecouteurs');
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (1, 'neuf', 104, 'tablette');

-- Combinaisons pour 'reconditionne'
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (2, 'reconditionne', 101, 'smartphone');
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (2, 'reconditionne', 102, 'ordinateur');
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (2, 'reconditionne', 103, 'ecouteurs');
INSERT INTO EtatType (idEtat, etat, idType, type) VALUES (2, 'reconditionne', 104, 'tablette');

------- Magasin -------
-- France
INSERT INTO Magasin VALUES (10001, 'Paris', '75000', 'France', 20, 300.0, 9, 18, TO_DATE('01-01-2010', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (10002, 'Paris', '75001', 'France', 15, 250.0, 10, 20, TO_DATE('15-06-2011', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (10003, 'Paris', '75002', 'France', 18, 280.0, 8, 17, TO_DATE('21-03-2012', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (10004, 'Lyon', '69000', 'France', 22, 320.0, 9, 18, TO_DATE('11-11-2013', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (10005, 'Lyon', '69001', 'France', 17, 260.0, 10, 19, TO_DATE('03-07-2014', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (10006, 'Lyon', '69002', 'France', 19, 290.0, 8, 18, TO_DATE('18-09-2015', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (10007, 'Marseille', '13000', 'France', 21, 310.0, 9, 18, TO_DATE('07-02-2016', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (10008, 'Marseille', '13001', 'France', 16, 270.0, 10, 20, TO_DATE('22-08-2017', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (10009, 'Marseille', '13002', 'France', 20, 285.0, 8, 17, TO_DATE('12-12-2018', 'DD-MM-YYYY'));

-- Espagne
INSERT INTO Magasin VALUES (20001, 'Madrid', '28001', 'Espagne', 25, 350.0, 9, 19, TO_DATE('05-03-2010', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (20002, 'Madrid', '28002', 'Espagne', 18, 290.0, 10, 18, TO_DATE('16-07-2011', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (20003, 'Madrid', '28003', 'Espagne', 20, 305.0, 8, 17, TO_DATE('27-10-2012', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (20004, 'Barcelone', '08001', 'Espagne', 22, 330.0, 9, 18, TO_DATE('09-01-2013', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (20005, 'Barcelone', '08002', 'Espagne', 15, 250.0, 10, 20, TO_DATE('20-04-2014', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (20006, 'Barcelone', '08003', 'Espagne', 19, 280.0, 8, 18, TO_DATE('03-08-2015', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (20007, 'Valence', '46001', 'Espagne', 23, 340.0, 9, 19, TO_DATE('15-12-2016', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (20008, 'Valence', '46002', 'Espagne', 16, 265.0, 10, 17, TO_DATE('28-02-2017', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (20009, 'Valence', '46003', 'Espagne', 21, 295.0, 8, 16, TO_DATE('11-06-2018', 'DD-MM-YYYY'));

-- Italie
INSERT INTO Magasin VALUES (30001, 'Rome', '00118', 'Italie', 24, 360.0, 9, 18, TO_DATE('02-03-2010', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (30002, 'Rome', '00119', 'Italie', 17, 275.0, 10, 20, TO_DATE('13-05-2011', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (30003, 'Rome', '00120', 'Italie', 19, 290.0, 8, 17, TO_DATE('24-09-2012', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (30004, 'Milan', '20121', 'Italie', 26, 345.0, 9, 19, TO_DATE('06-01-2013', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (30005, 'Milan', '20122', 'Italie', 14, 240.0, 10, 18, TO_DATE('19-03-2014', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (30006, 'Milan', '20123', 'Italie', 20, 305.0, 8, 18, TO_DATE('01-07-2015', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (30007, 'Naples', '80121', 'Italie', 22, 330.0, 9, 18, TO_DATE('14-11-2016', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (30008, 'Naples', '80122', 'Italie', 18, 285.0, 10, 19, TO_DATE('27-01-2017', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (30009, 'Naples', '80123', 'Italie', 23, 310.0, 8, 17, TO_DATE('10-05-2018', 'DD-MM-YYYY'));

-- Allemagne
INSERT INTO Magasin VALUES (40001, 'Berlin', '10115', 'Allemagne', 21, 340.0, 9, 18, TO_DATE('07-02-2010', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (40002, 'Berlin', '10117', 'Allemagne', 16, 260.0, 10, 19, TO_DATE('18-06-2011', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (40003, 'Berlin', '10119', 'Allemagne', 20, 300.0, 8, 17, TO_DATE('29-10-2012', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (40004, 'Munich', '80331', 'Allemagne', 25, 350.0, 9, 18, TO_DATE('12-02-2013', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (40005, 'Munich', '80333', 'Allemagne', 14, 245.0, 10, 20, TO_DATE('23-04-2014', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (40006, 'Munich', '80335', 'Allemagne', 18, 275.0, 8, 16, TO_DATE('05-08-2015', 'DD-MM-YYYY'));

INSERT INTO Magasin VALUES (40007, 'Francfort', '60311', 'Allemagne', 22, 320.0, 9, 19, TO_DATE('16-12-2016', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (40008, 'Francfort', '60313', 'Allemagne', 17, 270.0, 10, 17, TO_DATE('29-03-2017', 'DD-MM-YYYY'));
INSERT INTO Magasin VALUES (40009, 'Francfort', '60318', 'Allemagne', 19, 290.0, 8, 18, TO_DATE('09-07-2018', 'DD-MM-YYYY'));

------- Produit -------
-- Inserts pour les iPhones
INSERT INTO Produit VALUES ('IPN001', 'iPhone 12', 'rouge', '12', 'smartphone', 'Pro Max', 64, TO_DATE('23-10-2020', 'DD-MM-YYYY'), 1099, 24, 'iOS 14');
INSERT INTO Produit VALUES ('IPN002', 'iPhone 13', 'noir', '13', 'smartphone', 'Pro', 128, TO_DATE('24-09-2021', 'DD-MM-YYYY'), 999, 24, 'iOS 15');
INSERT INTO Produit VALUES ('IPN003', 'iPhone 11', 'blanc', '11', 'smartphone', 'Standard', 256, TO_DATE('20-09-2019', 'DD-MM-YYYY'), 699, 24, 'iOS 13');
INSERT INTO Produit VALUES ('IPN004', 'iPhone 12', 'gris', '12', 'smartphone', 'Mini', 128, TO_DATE('23-10-2020', 'DD-MM-YYYY'), 699, 24, 'iOS 14');
INSERT INTO Produit VALUES ('IPN005', 'iPhone 13', 'blue', '13', 'smartphone', 'Pro Max', 256, TO_DATE('24-09-2021', 'DD-MM-YYYY'), 1199, 24, 'iOS 15');
INSERT INTO Produit VALUES ('IPN006', 'iPhone 11', 'noir', '11', 'smartphone', 'Pro', 64, TO_DATE('20-09-2019', 'DD-MM-YYYY'), 999, 24, 'iOS 13');

-- Inserts pour les Mac
INSERT INTO Produit VALUES ('MAC001', 'MacBook Pro', 'gris', '2021', 'ordinateur', 'Pro 13"', 256, TO_DATE('18-11-2021', 'DD-MM-YYYY'), 1299, 24, 'macOS Monterey');
INSERT INTO Produit VALUES ('MAC002', 'MacBook Air', 'argent', '2020', 'ordinateur', 'Air', 512, TO_DATE('15-07-2020', 'DD-MM-YYYY'), 999, 24, 'macOS Big Sur');
INSERT INTO Produit VALUES ('MAC003', 'MacBook Pro', 'noir', '2021', 'ordinateur', 'Pro 16"', 1024, TO_DATE('18-11-2021', 'DD-MM-YYYY'), 2499, 24, 'macOS Monterey');

-- Inserts pour les écouteurs
INSERT INTO Produit VALUES ('EAR001', 'AirPods Pro', 'blanc', '1', 'ecouteurs', 'Pro', NULL, TO_DATE('30-10-2019', 'DD-MM-YYYY'), 249, 12, '1ère Génération');
INSERT INTO Produit VALUES ('EAR002', 'AirPods', 'blanc', '2', 'ecouteurs', 'Standard', NULL, TO_DATE('20-03-2019', 'DD-MM-YYYY'), 159, 12, '2ème Génération');
INSERT INTO Produit VALUES ('EAR003', 'AirPods Max', 'blanc', '1', 'ecouteurs', 'Max', NULL, TO_DATE('15-12-2020', 'DD-MM-YYYY'), 549, 12, '1ère Génération');

-- Inserts pour les iPad
INSERT INTO Produit VALUES ('IPD001', 'iPad Pro', 'argent', '2021', 'tablette', 'Pro 12.9"', 128, TO_DATE('21-05-2021', 'DD-MM-YYYY'), 1099, 24, 'iOS 14');
INSERT INTO Produit VALUES ('IPD002', 'iPad Air', 'rose', '2020', 'tablette', 'Air', 256, TO_DATE('23-10-2020', 'DD-MM-YYYY'), 749, 24, 'iOS 14');
INSERT INTO Produit VALUES ('IPD003', 'iPad Mini', 'gris', '2021', 'tablette', 'Mini', 64, TO_DATE('24-09-2021', 'DD-MM-YYYY'), 499, 24, 'iOS 15');

------- Dates -------


------- Stocks -------

INSERT INTO Stocks VALUES ('IPN001', 10001, 24122022, 1, 101, 100);
INSERT INTO Stocks VALUES ('IPN002', 10002, 24012023, 1, 101, 90);
INSERT INTO Stocks VALUES ('IPN003', 10003, 22122022, 2, 101, 1);
INSERT INTO Stocks VALUES ('IPN004', 10004, 24042022, 2, 101, 70);
INSERT INTO Stocks VALUES ('IPN005', 10005, 22122022, 1, 101, 60);
INSERT INTO Stocks VALUES ('IPN006', 10006, 22122022, 1, 101, 50);
INSERT INTO Stocks VALUES ('MAC001', 10007, 22122021, 1, 102, 40);
INSERT INTO Stocks VALUES ('MAC002', 10008, 22122022, 2, 102, 30);
INSERT INTO Stocks VALUES ('MAC003', 10009, 22102022, 2, 102, 20);
INSERT INTO Stocks VALUES ('EAR001', 20001, 22122022, 1, 103, 110);
INSERT INTO Stocks VALUES ('EAR002', 20002, 22012022, 2, 103, 4);
INSERT INTO Stocks VALUES ('EAR003', 20003, 22122022, 1, 103, 90);
INSERT INTO Stocks VALUES ('IPD001', 20004, 22102022, 2, 104, 85);
INSERT INTO Stocks VALUES ('IPD002', 20005, 22112022, 1, 104, 80);
INSERT INTO Stocks VALUES ('IPD003', 20006, 22122022, 2, 104, 2);
INSERT INTO Stocks VALUES ('IPN001', 20007, 12122023, 1, 101, 70);
INSERT INTO Stocks VALUES ('IPN002', 20008, 22122023, 2, 101, 65);
INSERT INTO Stocks VALUES ('IPN003', 20009, 22122023, 1, 101, 60);
INSERT INTO Stocks VALUES ('IPN004', 30001, 22122023, 2, 101, 55);
INSERT INTO Stocks VALUES ('IPN005', 30002, 22122023, 1, 101, 50);
INSERT INTO Stocks VALUES ('IPN006', 30003, 22112023, 2, 101, 0);
INSERT INTO Stocks VALUES ('MAC001', 30004, 22102023, 1, 102, 40);
INSERT INTO Stocks VALUES ('MAC002', 30005, 22122023, 2, 102, 35);
INSERT INTO Stocks VALUES ('MAC003', 30006, 22122023, 1, 102, 30);
INSERT INTO Stocks VALUES ('EAR001', 30007, 22122023, 2, 103, 70);
INSERT INTO Stocks VALUES ('EAR002', 30008, 22122023, 1, 103, 65);
INSERT INTO Stocks VALUES ('EAR003', 30009, 22012023, 2, 103, 60);
INSERT INTO Stocks VALUES ('IPD001', 40001, 12122023, 1, 104, 55);
INSERT INTO Stocks VALUES ('IPD002', 40002, 22122023, 2, 104, 50);
INSERT INTO Stocks VALUES ('IPD003', 40003, 12012023, 1, 104, 0);
