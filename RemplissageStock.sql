
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
