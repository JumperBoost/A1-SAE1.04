-- Attaquants: M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Défenseurs: R. Duong, M. Gayed, R. Cathelin, L. Martin

-- Requêtes Attaque BD Adverse


-- Relation Ville

-- Inserer un code INSEE negatif (CASSEE)
INSERT INTO Ville VALUES (-11, 45.777222, 3.087025, '63000', 'Clermont-Ferrand', 149353);

-- Inserer un code INSEE avec des lettres (CASSEE)
INSERT INTO Ville VALUES ('2A004', 41.919229, 8.738635, '20000', 'Corse du Sud', 74107);

-- Inserer une longittude negatif a -180 ou superieur a 180, et lattitude superieur a 90 ou inferieur a -90, ce qui n'est pas possible normalement (CASSEE)
INSERT INTO Ville VALUES (31, -96.777222, 193.087025, '63000', 'Clermont-Ferrand', 149353);
INSERT INTO Ville VALUES (31, 96.777222, -193.087025, '63000', 'Clermont-Ferrand', 149353);



-- Relation TypeOperation

-- Inserer un doublon relative au nom de service
INSERT INTO TypeOperation
VALUES ('FUT', 'Operation du colon', 230.99, 'Fatigue');



-- Relation Clinique

-- Inserer un doublon relative au numero de siret
INSERT INTO Clinique
VALUES (456789123, 1);

-- Inserer un code INSEE inexistant
INSERT INTO Clinique
VALUES (186554963, 123);



-- Relation Chirurgien

-- Inserer un numero de SIRET inexistant
INSERT INTO Chirurgien
VALUES (123, 'Marc', 'John', 355478291);



-- Relation Patient

-- Inserer une date d'operation et de rendez-vous avant la date de naissance; date d'operation avant la date de rendez-vous (CASSEE)
INSERT INTO patient
VALUES('14', 'Erreur', 'Date', '13/11/2011', '11/11/2011', '15/12/2050', 101, 'FUT');



-- Relation Services

-- Inserer un numero de telephone invalide (CASSEE)
INSERT INTO Services
VALUES (0, 'Medecins', 123456789, 101);



-- Relation Pratique

-- Inserer une pratique avec un numero de SIRET inexistant
INSERT INTO Pratique
VALUES (987654321, 'FUT');

-- Inserer une pratique avec un nom de service inexistant
INSERT INTO Pratique
VALUES (11112521, 'XYZ');



-- Relation Effectue

-- Inserer un numero de licence et de service inexistants
INSERT INTO Effectue
VALUES (123456711, 'XYZ');



-- Relation Facturation

-- Inserer une facture sans date de paiement (Une date de paiement est necessaire a chaque facturation) (CASSEE)
INSERT INTO Facturation(numSiret, numPatient, montant)
VALUES (987654321, 'P006', 49.99);
