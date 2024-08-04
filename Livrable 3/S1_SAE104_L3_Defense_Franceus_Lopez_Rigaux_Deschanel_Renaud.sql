-- Défenseurs: M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Attaquants: R. Duong, M. Gayed, R. Cathelin, L. Martin

-- Requêtes du second jeu de donnée de tests des défenseurs


-- Q3 (Si utilise 'login' au lieu de 'prenom')
INSERT INTO Employee
VALUES ('lopez-nathanBIS@gmail.com', 'LOPEZ_LECOQ', 'Nathan-Raphaël', '06/04/1990', '06/04/2020', '$2y$10$wp.jMqQr50K5yfSpIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', '34120', '34199', '34500', '34032');

UPDATE partie SET dirigeant = 'lopez-nathanBIS@gmail.com' WHERE id_partie = 1;


-- Pour supprimer ============================
UPDATE partie SET dirigeant = 'lopez-nathan@gmail.com' WHERE id_partie = 1;
DELETE FROM employee WHERE login_employee = 'lopez-nathanBIS@gmail.com';



-- Q5 (Si oublie du MINUS; Si INTERSECT au lieu de MINUS)
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('anos-voldigoad@demonking.com', 'VOLDIGOAD', 'Anos', '01/01/2001', '$2y$10$wp.jNqQr50L5yfSpIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', 'AnosV', 666.66, '34120', '34199', '34500', '34032');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('anos-voldigoad2@demonking.com', 'VOLDIGOAD', 'Anos', '01/01/2001', '$2y$10$wp.jNqQr50L5yfSpIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', 'AnosV', 666.66, '34120', '34199', '34500', '34032');

UPDATE partie SET nb_place_max = nb_place_max + 2 WHERE id_partie IN (2, 3, 4);

-- Épopée Stellaire : Marées Cosmiques
INSERT INTO Participe(login, id_partie)
VALUES ('anos-voldigoad@demonking.com', 3); 
INSERT INTO Participe(login, id_partie)
VALUES ('anos-voldigoad2@demonking.com', 3);
-- La Malédiction de Tourteroc
INSERT INTO Participe(login, id_partie)
VALUES ('anos-voldigoad@demonking.com', 4);
INSERT INTO Participe(login, id_partie)
VALUES ('anos-voldigoad2@demonking.com', 4);
-- On n''embête pas les yordles
INSERT INTO Participe(login, id_partie)
VALUES ('anos-voldigoad@demonking.com', 2); 
INSERT INTO Participe(login, id_partie)
VALUES ('anos-voldigoad2@demonking.com', 2);


-- Pour supprimer ============================
DELETE FROM participe WHERE login IN ('anos-voldigoad@demonking.com', 'anos-voldigoad2@demonking.com');
DELETE FROM utilisateur WHERE login IN ('anos-voldigoad@demonking.com', 'anos-voldigoad2@demonking.com');
UPDATE partie SET nb_place_max = nb_place_max - 2 WHERE id_partie IN (2, 3, 4);



-- Q11 (Si COUNT non distinct)
INSERT INTO Employee
VALUES ('anos-voldigoad@demonking.com', 'VOLDIGOAD', 'Anos', '01/01/2001', '01/01/2011', '$2y$10$wp.jNqQU50K5yfSpIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', '34120', '34199', '34500', '34032');

INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (666, 6.66, '23/08/2024 16:00:00', 666, 6, 6, 'Demon1', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (667, 6.66, '24/08/2024 16:00:00', 666, 6, 6, 'Demon2', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (668, 6.66, '25/08/2024 16:00:00', 666, 6, 6, 'Demon3', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (669, 6.66, '26/08/2024 16:00:00', 666, 6, 6, 'Demon4', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (670, 6.66, '27/08/2024 16:00:00', 666, 6, 6, 'Demon5', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (671, 6.66, '28/08/2024 16:00:00', 666, 6, 6, 'Demon6', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (672, 6.66, '29/08/2024 16:00:00', 666, 6, 6, 'Demon7', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (673, 6.66, '30/08/2024 16:00:00', 666, 6, 6, 'Demon8', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (674, 6.66, '01/08/2024 16:00:00', 666, 6, 6, 'Demon9', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (675, 6.66, '02/08/2024 16:00:00', 666, 6, 6, 'Demon10', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (676, 6.66, '03/08/2024 16:00:00', 666, 6, 6, 'Demon11', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (677, 6.66, '04/08/2024 16:00:00', 666, 6, 6, 'Demon12', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (678, 6.66, '05/08/2024 16:00:00', 666, 6, 6, 'Demon13', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (679, 6.66, '06/08/2024 16:00:00', 666, 6, 6, 'Demon14', '34500', '34032', 'anos-voldigoad@demonking.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (680, 6.66, '07/08/2024 16:00:00', 666, 6, 6, 'Demon15', '34500', '34032', 'anos-voldigoad@demonking.com');

INSERT INTO Associe
VALUES (666, 'Fantaisie');
INSERT INTO Associe
VALUES (667, 'Fantaisie');
INSERT INTO Associe
VALUES (668, 'Fantaisie');
INSERT INTO Associe
VALUES (669, 'Fantaisie');
INSERT INTO Associe
VALUES (670, 'Fantaisie');
INSERT INTO Associe
VALUES (671, 'Fantaisie');
INSERT INTO Associe
VALUES (672, 'Fantaisie');
INSERT INTO Associe
VALUES (673, 'Fantaisie');
INSERT INTO Associe
VALUES (674, 'Fantaisie');
INSERT INTO Associe
VALUES (675, 'Fantaisie');
INSERT INTO Associe
VALUES (676, 'Fantaisie');
INSERT INTO Associe
VALUES (677, 'Fantaisie');
INSERT INTO Associe
VALUES (678, 'Fantaisie');
INSERT INTO Associe
VALUES (679, 'Fantaisie');
INSERT INTO Associe
VALUES (680, 'Fantaisie');

-- Pour supprimer ============================
DELETE FROM associe WHERE id_partie > 665;
DELETE FROM partie WHERE id_partie > 665;
DELETE FROM employee WHERE login_employee = 'anos-voldigoad@demonking.com';
