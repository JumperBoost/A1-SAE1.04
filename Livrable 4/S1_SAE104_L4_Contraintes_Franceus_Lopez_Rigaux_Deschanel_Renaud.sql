-- M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Script d'implémentation des contraintes


-- On ajoute la date d'achat en tant que clé primaire dans la table 'Achat'
ALTER TABLE Achat DROP CONSTRAINT pk_achat;
ALTER TABLE Achat ADD CONSTRAINT pk_achat PRIMARY KEY (login, id_np, date_achat);

-- On modifie la référence du login de l'utilisateur qui réserve dans la table 'Reserve' (faisant référence à la table 'Participe')
ALTER TABLE Reserve DROP CONSTRAINT fk_reserve_utilisateur;
ALTER TABLE Reserve ADD CONSTRAINT fk_reserve_participant FOREIGN KEY (login, id_partie) REFERENCES Participe(login, id_partie);
ALTER TABLE Reserve DROP CONSTRAINT fk_reserve_partie; -- On retire la référence de l'id de la partie car elle est déjà référencée dans la table 'Participe'

-- On ajoute la contrainte de vérification de l'id du personnage dans la table Participe, qui doit appartenir à l'utilisateur qui participe --
-- Trigger INSERT
CREATE OR REPLACE TRIGGER trigger_participe
BEFORE INSERT ON Participe
FOR EACH ROW
DECLARE
   nb_place_max INTEGER;
   nbPersonne INTEGER;
   date_partie TIMESTAMP;
   date_naissance DATE;
   age_restriction NUMBER(3,0);
   age_utilisateur NUMBER(3,0);
   login_personnage VARCHAR(60);
BEGIN
   SELECT nb_place_max INTO nb_place_max FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT COUNT(*) INTO nbPersonne FROM Participe WHERE Participe.id_partie = :new.id_partie;
   SELECT date_partie INTO date_partie FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT date_naissance INTO date_naissance FROM Utilisateur WHERE Utilisateur.login = :new.login;
   SELECT age_restriction INTO age_restriction FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT MONTHS_BETWEEN (CURRENT_DATE, date_naissance)/12 INTO age_utilisateur FROM DUAL;
   SELECT p.login INTO login_personnage FROM Personnage p WHERE p.id_personnage = :new.id_personnage;

   IF (nb_place_max < nbPersonne) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Il n''y a plus de place disponible pour cette partie.');
   END IF;

   IF (date_partie <= CURRENT_TIMESTAMP) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous ne pouvez pas participer à une partie qui a déjà eu lieu.');
   END IF;

   IF (age_restriction > age_utilisateur) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous n''avez pas l''age requis pour participer à cette partie.');
   END IF;
   
   IF (login_personnage != :new.login) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Le personnage n''appartient pas au participant.');
   END IF;
END;
/

-- Trigger UPDATE
CREATE OR REPLACE TRIGGER trigger_participe_update
BEFORE UPDATE ON Participe
FOR EACH ROW
DECLARE
   PRAGMA AUTONOMOUS_TRANSACTION;
   nb_place_max INTEGER;
   nbPersonne INTEGER;
   date_partie TIMESTAMP;
   date_naissance DATE;
   age_restriction NUMBER(3,0);
   age_utilisateur NUMBER(3,0);
   login_personnage VARCHAR(60);
BEGIN
   SELECT nb_place_max INTO nb_place_max FROM Partie WHERE Partie.id_partie = :old.id_partie;
   SELECT COUNT(*) INTO nbPersonne FROM Participe WHERE Participe.id_partie = :old.id_partie;
   SELECT date_partie INTO date_partie FROM Partie WHERE Partie.id_partie = :old.id_partie;
   SELECT date_naissance INTO date_naissance FROM Utilisateur WHERE Utilisateur.login = :old.login;
   SELECT age_restriction INTO age_restriction FROM Partie WHERE Partie.id_partie = :old.id_partie;
   SELECT MONTHS_BETWEEN (CURRENT_DATE, date_naissance)/12 INTO age_utilisateur FROM DUAL;
   SELECT p.login INTO login_personnage FROM Personnage p WHERE p.id_personnage = :new.id_personnage;

   IF (nb_place_max <= nbPersonne) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Il n''y a plus de place disponible pour cette partie.');
   END IF;

   IF (date_partie <= CURRENT_TIMESTAMP) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous ne pouvez pas participer à une partie qui a déjà eu lieu.');
   END IF;

   IF (age_restriction > age_utilisateur) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous n''avez pas l''age requis pour participer à cette partie.');
   END IF;
   
   IF (login_personnage != :old.login) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Le personnage n''appartient pas au participant.');
   END IF;
END;
/