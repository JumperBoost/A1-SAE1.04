-- M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Script Insertion


--Ville     ==========================================================
INSERT INTO Ville
VALUES ('Pezenas', '34199', 3.4167, 43.45, '34', 7693);
INSERT INTO Ville
VALUES ('Toulouse', '31555', 1.4437, 43.6043, '31', 498003);
INSERT INTO Ville
VALUES ('Bourg-en-Bresse', '01053', 5.216667, 5.216667, '01', 42057);
INSERT INTO Ville
VALUES ('Narbonne', '11262', 11, 43.184277, '11', 57824);
INSERT INTO Ville
VALUES ('Montpellier', '34172', 3.8833, 43.6, '34', 311835);
INSERT INTO Ville
VALUES ('Biarritz', '64122', -1.5667, 43.4833, '64', 25787);
INSERT INTO Ville
VALUES ('Halluin', '59279', 3.127845, 50.782824, '59', 20743);
INSERT INTO Ville
VALUES ('Beziers', '34032', 3.25, 43.35, '34', 78683);
INSERT INTO Ville
VALUES ('Correns', '83045', 6.08333, 43.48333, '83', 906);
INSERT INTO Ville
VALUES ('Cotignac', '83046', 6.15, 43.5333, '83', 2018);


--Cp        ==========================================================
--Montpellier
INSERT INTO Cp
VALUES ('34172', '34000');
INSERT INTO Cp
VALUES ('34172', '34070');
INSERT INTO Cp
VALUES ('34172', '34080');
INSERT INTO Cp
VALUES ('34172', '34090');
--Toulouse
INSERT INTO Cp
VALUES ('31555', '31000');
INSERT INTO Cp
VALUES ('31555', '31004');
INSERT INTO Cp
VALUES ('31555', '31043');
INSERT INTO Cp
VALUES ('31555', '31090');
INSERT INTO Cp
VALUES ('31555', '31100');
INSERT INTO Cp
VALUES ('31555', '31200');
INSERT INTO Cp
VALUES ('31555', '31300');
INSERT INTO Cp
VALUES ('31555', '31400');
INSERT INTO Cp
VALUES ('31555', '31500');
--Bourg-en-Bresse
INSERT INTO Cp
VALUES ('01053', '01000');
INSERT INTO Cp
VALUES ('01053', '01012');
--Narbonne
INSERT INTO Cp
VALUES ('11262', '11100');
--Biarritz
INSERT INTO Cp
VALUES ('64122', '64200');
--Halluin
INSERT INTO Cp
VALUES ('59279', '59250');
--Beziers
INSERT INTO Cp
VALUES ('34032', '34500');
--Correns
INSERT INTO Cp
VALUES ('83045', '83570');
--Cotignac
INSERT INTO Cp
VALUES ('83046', '83570');
--Pezenas
INSERT INTO Cp
VALUES ('34199', '34120');


--Employee  ==========================================================
INSERT INTO Employee
VALUES ('lopez-nathan@gmail.com', 'LOPEZ_ROJAS', 'Nathan-Raphaël', '06/04/1990', '06/04/2020', '$2y$10$wp.jNqQr50K5yfSpIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', '34120', '34199', '34500', '34032');
INSERT INTO Employee
VALUES ('deschanel-alexandre@gmail.com', 'DESCHANEL', 'Alexandre', '01/01/2005', '12/01/2012', '$2y$10$evRM4xMSrDJre5pCcQsjHuq3OAskbKiW65ikBigN/kne6g9Wu/87e', '34500', '34032', '34000', '34172');
INSERT INTO Employee 
VALUES ('rigaux-heloise@cutmail.com', 'RIGAUX', 'Héloïse', '21/05/2005', '06/04/2018', '$2y$10$4ahmFhYTzlQsOuqevdSNKeaLAbVs2rH58N1BZnBJVTNbxAyvcflji', '34120', '34199', '31000', '31555');
INSERT INTO Employee
VALUES ('renaud-julien@laposte.net', 'RENAUD', 'Julien', '04/09/2001', '06/09/2023', '$2y$10$7yUvSzrjaTp3euotrah6z.n.mZeoq9UKfxVDITFgJn4Bz9/mbG0OK', '34000', '34172', '34500', '34032');
INSERT INTO Employee
VALUES ('lorenzo-eden@gigglemail.com', 'LORENZO', 'Eden', '29/04/2005', '06/09/2023', '$2y$10$DckVmBOv7v5SycEZIK6Fj.MPpB3TlqJaPggiekPHldY43nw.J9jz2', '34000', '34172', '34500', '34032');
INSERT INTO Employee (login_employee, nom_employee, prenom_employee, date_naissance, mdp_hash, code_postal_naissance, insee_naissance, code_postal_residence, insee_residence)
VALUES ('franceus-milwenn@aol.com', 'FRANCEUS-COINTREL', 'Milwenn', '06/04/2005', '$2y$10$Sl2PdcKMLuHbmoxJKeWE0OULDEfwfC0VQTkMK0NBecANICqQqx9u.', '34000', '34172', '59250', '59279');
INSERT INTO Employee (login_employee, nom_employee, prenom_employee, date_naissance, mdp_hash, code_postal_naissance, insee_naissance, code_postal_residence, insee_residence)
VALUES ('nadjad-camille@gmail.com', 'NADJAD', 'Camille', '06/06/2005', '$2y$10$ON4l0IZNmouLfj3jW61k3eVmyvjuEKi37iwypj0N9CD41C4DUI6r2', '34120', '34199', '34000', '34172');
INSERT INTO Employee (login_employee, nom_employee, prenom_employee, date_naissance, mdp_hash, code_postal_naissance, insee_naissance, code_postal_residence, insee_residence)
VALUES ('parama-liam@outlook.com', 'PARAMA', 'Liam', '12/02/2005', '$2y$10$l8loirL/yGfktMKQfwdQ5O/JnlHBeHkqZpVk1tDmA.hAHKmkCDXh2', '34120', '34199', '34500', '34032');
INSERT INTO Employee (login_employee, nom_employee, prenom_employee, date_naissance, mdp_hash, code_postal_naissance, insee_naissance, code_postal_residence, insee_residence)
VALUES ('martin-josh@hotmail.com', 'MARTIN', 'Josh', '23/10/1992', '$2y$10$8MXGdcs/dNusS2uBGfrGXObawqdJ8VpIuOm92dcjsB5uE8GDAqyK6', '34000', '34172', '64200', '64122');
INSERT INTO Employee (login_employee, nom_employee, prenom_employee, date_naissance, mdp_hash, code_postal_naissance, insee_naissance, code_postal_residence, insee_residence)
VALUES ('failla-olga@gmail.com', 'FAILLA', 'Olga', '08/05/2005', '$2y$10$2i3SFeqh/zzSIcPV2P4iqe7fwpti/GWy4Nw4P5j4iZot1o1bXV5z.', '34120', '34199', '34500', '34032');


--Theme     ==========================================================

INSERT INTO Theme
VALUES ('Fantaisie');
INSERT INTO Theme
VALUES ('Aventure');
INSERT INTO Theme
VALUES ('Espionnage');
INSERT INTO Theme
VALUES ('Historique');
INSERT INTO Theme
VALUES ('Apprentissage');
INSERT INTO Theme
VALUES ('Steampunk');
INSERT INTO Theme
VALUES ('Horreur');
INSERT INTO Theme
VALUES ('Contemporain');
INSERT INTO Theme
VALUES ('Post-apocalyptique');
INSERT INTO Theme
VALUES ('Science-fiction');
INSERT INTO Theme
VALUES ('Pirate');
INSERT INTO Theme
VALUES ('Cosmonaute');


--Produits  ==========================================================

INSERT INTO Produits
VALUES (1, 'Coockies au chocolat', 2.98, 'consommable');
INSERT INTO Produits
VALUES (2, 'Coca 33cl', 3.99, 'consommable');
INSERT INTO Produits
VALUES (3, 'Madeleine 500g', 5.99, 'consommable' );
INSERT INTO Produits
VALUES (4, 'Eau plate 33cl', 1.99, 'consommable' );
INSERT INTO Produits
VALUES (5, 'Eau plate 1L', 3.49, 'consommable');
INSERT INTO Produits
VALUES (6, 'Cape de hero', 14.99, 'cosmetique');
INSERT INTO Produits
VALUES (7, 'Chapeau de mage', 19.99, 'cosmetique');
INSERT INTO Produits
VALUES (8, 'Baton de mage', 68.99, 'cosmetique');
INSERT INTO Produits
VALUES (9, 'Loupe de detective', 9.99, 'cosmetique');
INSERT INTO Produits
VALUES (10, 'Bouclier', 39.98, 'cosmetique');
INSERT INTO Produits
VALUES (11, 'Cache oeil', 5.49, 'cosmetique');
INSERT INTO Produits
VALUES (12, 'Gun/munition mousse', 34.99, 'cosmetique');


--Utilisateur==========================================================

INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('lopez-nathan@gmail.com', 'LOPEZ_ROJAS', 'Nathan-Raphaël', '06/04/1990', '$2y$10$wp.jNqQr50K5yfSpIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', 'Flamus', 20.00, '34120', '34199', '34500', '34032');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('deschanel-alexandre@gmail.com', 'DESCHANEL', 'Alexandre', '01/01/2005', '$2y$10$evRM4xMSrDJre5pCcQsjHuq3OAskbKiW65ikBigN/kne6g9Wu/87e', 'Desal', 5.21, '34500', '34032', '34000', '34172');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('rigaux-heloise@cutmail.com', 'RIGAUX', 'Héloïse', '21/05/2005', '$2y$10$4ahmFhYTzlQsOuqevdSNKeaLAbVs2rH58N1BZnBJVTNbxAyvcflji', 'Neru', 50.00, '34000', '34172', '31000', '31555');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('renaud-julien@laposte.net', 'RENAUD', 'Julien', '04/09/2001', '$2y$10$7yUvSzrjaTp3euotrah6z.n.mZeoq9UKfxVDITFgJn4Bz9/mbG0OK', 'Dragon', 21.00, '34000', '34172', '34500', '34032');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('lorenzo-eden@gigglemail.com', 'LORENZO', 'Eden', '29/04/2005', '$2y$10$DckVmBOv7v5SycEZIK6Fj.MPpB3TlqJaPggiekPHldY43nw.J9jz2', 'Ned', 20.00, '34000', '34172', '34500', '34032');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('franceus-milwenn@aol.com', 'FRANCEUS-COINTREL', 'Milwenn', '06/04/2005', '$2y$10$Sl2PdcKMLuHbmoxJKeWE0OULDEfwfC0VQTkMK0NBecANICqQqx9u.', 'JumperBoost', 30.00, '34090', '34172', '59250', '59279');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('mino-marc@gmail.com', 'MINO', 'Marc', '06/06/2005', '$2y$10$ON4l0IZNmouLfj3jW61k3eVmyvjuEKi37iwypj0N9CD41C4DUI6r2', 'M@ndar1ne', 12.60, '34120', '34199', '34000', '34172');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('lopez-vivien@hotmail.com', 'LOPEZ', 'Vivien', '12/02/2005', '$2y$10$l8loirL/yGfktMKQfwdQ5O/JnlHBeHkqZpVk1tDmA.hAHKmkCDXh2', 'Sociable', 130.98, '34120', '34199', '34500', '34032');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('atteloc-ymer@mmril.fr', 'ATTELLOC', 'Ymer', '23/10/1992', '$2y$10$8MXGdcs/dNusS2uBGfrGXObawqdJ8VpIuOm92dcjsB5uE8GDAqyK6', 'M14@bel', 20.00, '34000', '34172', '64200', '64122');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance)
VALUES ('ortiz-miram@outlook.com', 'ORTIZ', 'Miram', '08/05/2005', '$2y$10$2i3SFeqh/zzSIcPV2P4iqe7fwpti/GWy4Nw4P5j4iZot1o1bXV5z.', 'Piqal', 20.00, '34120', '34199', '34500', '34032');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance, date_inscription)
VALUES ('mighto-all@gmail.com', 'MIGHTO', 'All', '06/04/1990', '$2y$10$wp.jNqQr50K5ysdiIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', 'Sumashu', 99.99, 34120, 34199, 34500, 34032, '06/04/2010 00:00:00');
INSERT INTO Utilisateur (login, nom_user, prenom_user, date_naissance, mdp_hash, pseudo, solde, code_postal_residence, insee_residence, code_postal_naissance, insee_naissance, date_inscription)
VALUES ('todoroki-shoto@idontlikemydad.fr', 'TODOROKI', 'Shoto', '06/04/1999', '$2y$10$wp.jNqQr50K5ysdiIk2Vyu23Y3c/JUVF3vMU0bXtL7mGTfLRRYFEW', 'Firexxx', 12.99, 34120, 34199, 34500, 34032, '07/04/2015');



--Partie    ==========================================================
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (1, 10.00, '23/08/2024 16:00:00', 300, 'Envie de jouer/découvrir des PBTA ? Vous êtes au bon endroit ! J''ai tellement de systèmes qui me font envie mais mes dispos sont trop aléatoires alors je me suis dit " pourquoi ne pas créer un endroit pour les réunir tous ?" Au menu: Armor Astir, Liberté, World Wide Wrestling, Maho Shojo, The Sprawl, TSL, City of mist, Tendencies… Je cherche des joueur·euses qui ont soif de roleplay et de drama, si vous êtes intéressé·es par un ou plusieurs de ces systèmes n''hésitez pas à vous inscrire. Je ferai des sondages pour décider de quelle partie je lance et quand.', 18, 5, 'Les PBTA de Zae', '34500', '34032', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (2, 1.50, '15/02/2024 14:00:00', 240, 'J''ai envie de playtest mon système en faisant une partie décontractée et chaotique. D''habitude, Tristana la cannonière de Bandle, assure la discipline parmi les yordle. Cependant, aujourd''hui elle est partie à Bilgewater sauver Teemo, ce qui veut dire que vous êtes parfaitement libre d''emprunter tous les portails de Bandle pour enfin aller n''importe où sur Runeterra et semer le chaos ! Il n''y a pas de scénario précis, vous avez juste la liberté de causer une destruction indicible partout où vous allez, en rencontrant des personnages iconiques et qui sait, en vous faisant de nouveaux amis.', 12, 5, 'On n''embête pas les yordles', '34500', '34032', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (3, 2.50, '21/04/2024 10:00:00', 240, 'Explorez un univers où la piraterie spatiale et l''exploration interplanétaire se mêlent dans ce captivant jeu de rôle. En tant que capitaine, assemblez un équipage éclectique pour naviguer à travers des systèmes solaires exotiques, affronter des dangers extraterrestres, et découvrir d''anciens trésors. Vos choix stratégiques influencent le destin de votre équipage, avec des alliances changeantes, des trahisons potentielles et des mystères cosmiques à chaque tournant. Les batailles spatiales épiques, les raids audacieux et l''exploration de ruines extraterrestres ajoutent une dimension palpitante à votre aventure. Préparez-vous à hisser le drapeau noir et à conquérir les étoiles dans cette épopée où l''audace et la stratégie sont essentielles. Votre destin dans l''océan infini de l''espace dépend de vos choix et de votre bravoure. Êtes-vous prêt à affronter les marées cosmiques?', 18, 5, 'Épopée Stellaire : Marées Cosmiques', '31000', '31555', 'rigaux-heloise@cutmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (4, 15.00, '19/01/2024 00:00:00', 240, 'Alors que votre groupe est en direction de la capitale pour vous enregistrer à la Guilde des Aventuriers, vous tombez sur un petit village du nom de Tourteroc qui n''apparait pas sur votre carte. Fatigués de votre voyage, vous décidez de vous y reposer... mais la terrible maladie qui semble y sévir a de quoi soulever de nombreuses questions. Une mission haute en couleurs vous attend, rencontrez des personnages qui n''ont pas forcément de la gouache et n''oubliez pas que l''arc-en-ciel vient toujours après la pluie !', 16, 6, 'La Malédiction de Tourteroc', '34090', '34172', 'renaud-julien@laposte.net');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (5, 1.50, '18/02/2024 18:30:00', 240, 'Bienvenue sur Chulak, capitale du Goa''uld Apophis, 10 ans avant les événements de la série Stargate SG-1. Teal''c, Primat d''Apophis vous demande d''enquêter sur des secousses sismiques détectées dans la nuit à 30 kilomètres de la capitale. Votre groupe de Jaffas et d''humains doit donc visiter une petite ville proche de l''épicentre, quelles aventures et découvertes allez vous vivre durant cette enquête.', 18, 5, 'Luttes intestines', '34500', '34032', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (6, 9.99, '06/06/2024 22:45:00', 240, '"Entre une crise de baby blues qui n''en finit pas et une dépression morbide, les enfants doivent se protéger de Maman qui pète un plomb. Survivront ils jusqu''à l''arrivée de Papa?"', 18, 5, 'Mutter', '34500', '34032', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (7, 1.50, '15/02/2024 09:00:00', 240, 'Voilà bien longtemps que ça ne vous était pas arrivé ! Une demande de représentation dans un petit village au nord du continent pour égayer la nuit du réveillon ! Alors votre petite troupe de quatre bardes prépare les instruments, tout le monde éclaircit sa voix et vous voilà partit pour un voyage de plusieurs jours jusqu''au village de Gorville. La surprise fut totale à votre arrivée dans la bourgade, vous vérifiez alors votre carte mais non, c''est bien là que vous deviez vous rendre, dans des ruines et du sang... ', 18, 5, 'Un Noël en Musique', '34500', '34032', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (8, 1.50, '12/12/2112 12:12:12', 240, 'Vous formez un petit groupe de dresseurs. C''est votre moment de partir à l''aventure, avec comme seul ennemi, l''arène ! En partant avec votre fidèle pokémon, faites vous votre petite équipe d''allié, au sein de votre groupe d''amis.', 7, 7, 'Pokémon Aventure', '34500', '34032', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (9, 0.01, '14/02/2024 06:09:20', 120, 'L''île aux tempêtes est située au large de la côte des épées dans les Royaumes oubliés. Vous incarnerez un groupe d''aventurier qui pour diverses raisons personnelles se rendent au Repos des dragons un cloître situé sur cette île.', 7, 5, 'Les Dragons de l''Île aux Tempêtes', '01000', '01053', 'lopez-nathan@gmail.com');
INSERT INTO Partie (id_partie, prix_par_place, date_partie, duree, description, age_restriction, nb_place_max, nom, code_postal, insee, dirigeant)
VALUES (10, 1.00, '08/02/2024 06:06:06', 240, 'Vous êtes dans un monde où les pouvoirs surhumains sont plus présents qu''absents, et vous êtes de jeunes étudiants qui apprenez à utiliser ces dit pouvoirs, vous avez un/des mentor(s), qui vous apprends à maîtriser vos pouvoirs, à remplir le rôle de superhéro, bref, à devenir les personnes que vous aspirez a devenir !', 7, 5, 'Masks, les apprentis héros', '31000', '31555', 'rigaux-heloise@cutmail.com');

--Personnage  ==========================================================
INSERT INTO Personnage
VALUES (1, 'Hell', 'Hgalar', 10,12,14,8,18, 50, 40, 'haut elf', 'autre', 'lopez-vivien@hotmail.com');
INSERT INTO Personnage
VALUES (2, 'Ailean', 'Doylei', 13,14,13,14,13, 40, 50, 'humain', 'homme', 'franceus-milwenn@aol.com');
INSERT INTO Personnage
VALUES (3, 'Synne', 'Barrison', 6,16,12,16,14, 40, 60, 'elf noir', 'femme', 'lopez-nathan@gmail.com');
INSERT INTO Personnage
VALUES (4, 'Kynth', 'Sath', 6,10,16,20,12, 70, 100, 'demon', 'homme', 'mino-marc@gmail.com');
INSERT INTO Personnage
VALUES (5, 'Monglil', 'Gyniddlas', 10,12,14,8,18, 60, 50, 'gnome', 'femme', 'rigaux-heloise@cutmail.com');
INSERT INTO Personnage
VALUES (6, 'Tuld', 'Llostrondaund', 18,8,18,8,12, 80, 10, 'humain', 'homme', 'lopez-vivien@hotmail.com');
INSERT INTO Personnage
VALUES (7, 'Tyminos', 'Barrison', 10,12,14,8,18, 50, 10, 'humain', 'homme', 'deschanel-alexandre@gmail.com');
INSERT INTO Personnage
VALUES (8, 'Wimlumin ', 'Valrona', 10,12,14,8,18, 50, 10, 'elf des bois', 'homme', 'atteloc-ymer@mmril.fr');
INSERT INTO Personnage
VALUES (9, 'Themrouk', 'Shatterhorn', 10,12,14,8,18, 50, 10, 'nain', 'homme', 'lorenzo-eden@gigglemail.com');
INSERT INTO Personnage
VALUES (10, 'Frey', 'Sax', 14,10,14,16,8, 50, 10, 'elf noir', 'homme', 'deschanel-alexandre@gmail.com');
INSERT INTO Personnage
VALUES (11, 'Thanos', 'Pop', 20,20,20,20,20, 50, 10, 'thanos', 'homme', 'todoroki-shoto@idontlikemydad.fr');
INSERT INTO Personnage
VALUES (12, 'Thanoso', 'Pop', 20,20,20,20,20, 50, 10, 'thanos', 'homme', 'todoroki-shoto@idontlikemydad.fr');
INSERT INTO Personnage
VALUES (13, 'Thanosa', 'Pop', 20,20,20,20,20, 50, 10, 'thanos', 'homme', 'todoroki-shoto@idontlikemydad.fr');
INSERT INTO Personnage
VALUES (14, 'Thanosi', 'Pop', 20,20,20,20,20, 50, 10, 'thanos', 'homme', 'todoroki-shoto@idontlikemydad.fr');
INSERT INTO Personnage
VALUES (15, 'Thanosu', 'Pop', 20,20,20,20,20, 50, 10, 'thanos', 'homme', 'todoroki-shoto@idontlikemydad.fr');
INSERT INTO Personnage
VALUES (16, 'Rakan', 'UwU', 10,12,11,8,20, 50, 10, 'furry', 'homme', 'lorenzo-eden@gigglemail.com');
INSERT INTO Personnage
VALUES (17, 'Xayah', 'UwU', 10,12,11,8,20, 50, 10, 'furry', 'femme', 'lorenzo-eden@gigglemail.com');
INSERT INTO Personnage
VALUES (18, 'Ezreal', 'Bg', 10,12,11,8,20, 50, 10, 'arcanist', 'autre', 'lorenzo-eden@gigglemail.com');
INSERT INTO Personnage
VALUES (19, 'Gragas', 'Boom', 10,12,2,8,2, 50, 10, 'drunkard', 'homme', 'lorenzo-eden@gigglemail.com');
INSERT INTO Personnage
VALUES (20, 'Yasuo', 'Yone', 10,12,14,8,12, 50, 10, 'samourai', 'homme', 'lorenzo-eden@gigglemail.com');




--Participe ==========================================================
INSERT INTO Participe(login, id_partie)
VALUES ('lopez-nathan@gmail.com', 1);
INSERT INTO Participe
VALUES ('deschanel-alexandre@gmail.com', 3);
INSERT INTO Participe
VALUES ('lopez-vivien@hotmail.com', 3);
INSERT INTO Participe
VALUES ('mino-marc@gmail.com', 2);
INSERT INTO Participe
VALUES ('lorenzo-eden@gigglemail.com', 9);
INSERT INTO Participe
VALUES ('franceus-milwenn@aol.com', 9);
INSERT INTO Participe
VALUES ('lopez-vivien@hotmail.com', 9);
INSERT INTO Participe
VALUES ('lopez-vivien@hotmail.com', 1);
INSERT INTO Participe
VALUES ('atteloc-ymer@mmril.fr', 6);
INSERT INTO Participe
VALUES ('ortiz-miram@outlook.com', 7);
INSERT INTO Participe
VALUES ('ortiz-miram@outlook.com', 10);
INSERT INTO Participe
VALUES ('todoroki-shoto@idontlikemydad.fr', 3);
INSERT INTO Participe
VALUES ('todoroki-shoto@idontlikemydad.fr', 4);


--Contient ==========================================================
INSERT INTO Contient
VALUES (3, 1);
INSERT INTO Contient
VALUES (10, 3);
INSERT INTO Contient
VALUES (6, 3);
INSERT INTO Contient
VALUES (4, 2);
INSERT INTO Contient
VALUES (9, 9);
INSERT INTO Contient
VALUES (2, 9);
INSERT INTO Contient
VALUES (6, 9);
INSERT INTO Contient
VALUES (1, 1);
INSERT INTO Contient
VALUES (8, 6);
INSERT INTO Contient
VALUES (7, 7);
INSERT INTO Contient
VALUES (4, 11);
INSERT INTO Contient
VALUES (3, 12);
INSERT INTO Contient
VALUES (10, 9);
INSERT INTO Contient
VALUES (4, 19);
INSERT INTO Contient
VALUES (8, 20);
INSERT INTO Contient
VALUES (1, 17);
INSERT INTO Contient
VALUES (7, 18);
INSERT INTO Contient
VALUES (6, 16);


--Reserve   ==========================================================
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('lopez-nathan@gmail.com', 1, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('deschanel-alexandre@gmail.com', 3, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('rigaux-heloise@cutmail.com', 3, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('mino-marc@gmail.com', 2, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('lorenzo-eden@gigglemail.com', 9, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('franceus-milwenn@aol.com', 9, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('lopez-vivien@hotmail.com', 9, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('lopez-vivien@hotmail.com', 1, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('atteloc-ymer@mmril.fr', 6, 1);
INSERT INTO Reserve(login, id_partie, nbPersonne)
VALUES ('ortiz-miram@outlook.com', 7, 1);


--Associe    ==========================================================
INSERT INTO Associe
VALUES (1, 'Apprentissage');
INSERT INTO Associe
VALUES (2, 'Aventure');
INSERT INTO Associe
VALUES (2, 'Fantaisie');
INSERT INTO Associe
VALUES (3, 'Pirate');
INSERT INTO Associe
VALUES (3, 'Cosmonaute');
INSERT INTO Associe
VALUES (4, 'Horreur');
INSERT INTO Associe
VALUES (4, 'Fantaisie');
INSERT INTO Associe
VALUES (4, 'Aventure');
INSERT INTO Associe
VALUES (5, 'Science-fiction');
INSERT INTO Associe
VALUES (6, 'Contemporain');
INSERT INTO Associe
VALUES (6, 'Horreur');
INSERT INTO Associe
VALUES (7, 'Horreur');
INSERT INTO Associe
VALUES (7, 'Fantaisie');
INSERT INTO Associe
VALUES (8, 'Fantaisie');
INSERT INTO Associe
VALUES (8, 'Aventure');
INSERT INTO Associe
VALUES (9, 'Fantaisie');
INSERT INTO Associe
VALUES (9, 'Aventure');
INSERT INTO Associe
VALUES (10, 'Contemporain');
INSERT INTO Associe
VALUES (10, 'Fantaisie');


--Achat     ==========================================================
INSERT INTO Achat (login, id_np, qa)
VALUES ('lopez-nathan@gmail.com', 3, 2);
INSERT INTO Achat (login, id_np, qa)
VALUES ('deschanel-alexandre@gmail.com', 3, 5);
INSERT INTO Achat (login, id_np, qa)
VALUES ('rigaux-heloise@cutmail.com', 11, 1);
INSERT INTO Achat (login, id_np, qa)
VALUES ('renaud-julien@laposte.net', 12, 1);
INSERT INTO Achat (login, id_np, qa)
VALUES ('lorenzo-eden@gigglemail.com', 2, 1);
INSERT INTO Achat (login, id_np, qa)
VALUES ('franceus-milwenn@aol.com', 4, 1);
INSERT INTO Achat 
VALUES ('mino-marc@gmail.com', 4, 5, '12/01/2018');
INSERT INTO Achat
VALUES ('lopez-vivien@hotmail.com', 5, 3, '12/12/2017');
INSERT INTO Achat
VALUES ('atteloc-ymer@mmril.fr', 9, 1, '12/06/2022');
INSERT INTO Achat
VALUES ('ortiz-miram@outlook.com', 7, 2,'09/12/2008');
INSERT INTO Achat (login, id_np, qa)
VALUES ('franceus-milwenn@aol.com', 9, 3);
INSERT INTO Achat (login, id_np, qa)
VALUES ('franceus-milwenn@aol.com', 8, 2);


--Amis      ==========================================================
INSERT INTO Amis
VALUES ('lopez-nathan@gmail.com','deschanel-alexandre@gmail.com');
INSERT INTO Amis
VALUES ('lopez-nathan@gmail.com','rigaux-heloise@cutmail.com');
INSERT INTO Amis
VALUES ('lopez-nathan@gmail.com', 'renaud-julien@laposte.net');
INSERT INTO Amis
VALUES ('lopez-nathan@gmail.com','lorenzo-eden@gigglemail.com');
INSERT INTO Amis
VALUES ('rigaux-heloise@cutmail.com','deschanel-alexandre@gmail.com');
INSERT INTO Amis
VALUES ('renaud-julien@laposte.net','deschanel-alexandre@gmail.com');
INSERT INTO Amis
VALUES ('lorenzo-eden@gigglemail.com','deschanel-alexandre@gmail.com');
INSERT INTO Amis
VALUES ('franceus-milwenn@aol.com','deschanel-alexandre@gmail.com');
INSERT INTO Amis
VALUES ('lopez-nathan@gmail.com','atteloc-ymer@mmril.fr');
INSERT INTO Amis
VALUES ('lopez-vivien@hotmail.com','deschanel-alexandre@gmail.com');