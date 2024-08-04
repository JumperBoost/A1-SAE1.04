-- M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Script de modification des tables


-- Madame Ortiz n'a aucun personnage et participe a une partie (faille de notre ancienne BD) :
INSERT INTO Personnage
VALUES (21, 'Hemialnaju', 'Rifrandelore', 9, 10, 11, 12, 13, 50, 10, 'IA', 'autre', 'ortiz-miram@outlook.com');

-- Madame RIGAUX a réservé une partie mais n'est pas inscrite dans la table 'Participe' (faille de notre ancienne BD) :
INSERT INTO Participe VALUES ('rigaux-heloise@cutmail.com', 3);

-- On décide de combiner les tables 'Participe' et 'Contient' en une seule table 'Participe', avec l'ajout de l'id du personnage
-- L'attribut NOT NULL sera ajouté après la modifications des données concernées
ALTER TABLE Participe ADD id_personnage INTEGER;