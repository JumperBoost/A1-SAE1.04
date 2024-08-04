-- M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Script de remplissage des tables


-- Insertion des ids de personnage dans la table participe

UPDATE participe SET id_personnage = 3 WHERE login = 'lopez-nathan@gmail.com';
UPDATE participe SET id_personnage = 7 WHERE login = 'deschanel-alexandre@gmail.com';
UPDATE participe SET id_personnage = 1 WHERE login = 'lopez-vivien@hotmail.com';
UPDATE participe SET id_personnage = 4 WHERE login = 'mino-marc@gmail.com';
UPDATE participe SET id_personnage = 19 WHERE login = 'lorenzo-eden@gigglemail.com';
UPDATE participe SET id_personnage = 2 WHERE login = 'franceus-milwenn@aol.com';
UPDATE participe SET id_personnage = 8 WHERE login = 'atteloc-ymer@mmril.fr';
UPDATE participe SET id_personnage = 21 WHERE login = 'ortiz-miram@outlook.com';
UPDATE participe SET id_personnage = 15 WHERE login = 'todoroki-shoto@idontlikemydad.fr';
UPDATE participe SET id_personnage = 5 WHERE login = 'rigaux-heloise@cutmail.com';

-- On définit la condition NOT NULL sur l'attribut id_personnage
ALTER TABLE Participe MODIFY id_personnage INTEGER NOT NULL;
