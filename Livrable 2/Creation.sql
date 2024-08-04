-- SCRIPT CREATION DE TABLES


CREATE TABLE Ville(
   nom_ville VARCHAR(50) NOT NULL,
   insee VARCHAR(5) NOT NULL,
   latitude NUMBER(9,6) NOT NULL,
   longitude NUMBER(9,6) NOT NULL,
   departement VARCHAR(3) NOT NULL,
   nb_habitants INTEGER NOT NULL,
   CONSTRAINT pk_ville PRIMARY KEY(insee),
   CONSTRAINT insee_length CHECK (LENGTH(insee) = 5),
   CONSTRAINT latitude_range CHECK (-90 <= latitude AND latitude <= 90),
   CONSTRAINT longitude_range CHECK (-180 <= longitude AND longitude <= 180),
   CONSTRAINT departement_length CHECK (LENGTH(departement) >= 2),
   CONSTRAINT nb_habitants_positive CHECK (nb_habitants > 0),
   CONSTRAINT departement_values CHECK (departement in ('01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11',
                                                       '12', '13', '14', '15', '16', '17', '18', '19', '2A', '2B', '21',
                                                       '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32',
                                                       '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43',
                                                       '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54',
                                                       '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65',
                                                       '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76',
                                                       '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87',
                                                       '88', '89', '90', '91', '92', '93', '94', '95', '971', '972',
                                                       '973', '974', '975', '976', '977', '978', '984', '986', '987',
                                                       '988', '989')),
   CONSTRAINT ville_dep_equals_insee CHECK (SUBSTR(insee, 1, 2) = SUBSTR(departement, 1, 2))
);


CREATE TABLE Cp(
   insee VARCHAR(5),
   code_postal VARCHAR(5),
   CONSTRAINT pk_cp PRIMARY KEY(insee, code_postal),
   CONSTRAINT fk_cp_ville FOREIGN KEY(insee) REFERENCES Ville(insee),
   CONSTRAINT code_postal_length CHECK (LENGTH(code_postal) = 5),
   CONSTRAINT cp_dep_equals_insee CHECK (SUBSTR(insee, 1, 2) = SUBSTR(code_postal, 1, 2))
);



CREATE TABLE Employee(
   login_employee VARCHAR(100),
   nom_employee VARCHAR(40) NOT NULL,
   prenom_employee VARCHAR(40) NOT NULL,
   date_naissance DATE NOT NULL,
   date_embauche DATE DEFAULT CURRENT_DATE,
   mdp_hash VARCHAR(80) NOT NULL,
   code_postal_naissance VARCHAR(5) NOT NULL,
   insee_naissance VARCHAR(5) NOT NULL,
   code_postal_residence VARCHAR(5) NOT NULL,
   insee_residence VARCHAR(5) NOT NULL,
   CONSTRAINT pk_employee PRIMARY KEY(login_employee),
   CONSTRAINT fk_employee_naissance FOREIGN KEY(code_postal_naissance, insee_naissance) REFERENCES Cp(code_postal, insee),
   CONSTRAINT fk_employee_residence FOREIGN KEY(code_postal_residence, insee_residence) REFERENCES Cp(code_postal, insee),
   CONSTRAINT embauche_sup_naissance CHECK (date_embauche > date_naissance)
);


CREATE TABLE Theme(
   categorie VARCHAR(20), 
   CONSTRAINT pk_theme PRIMARY KEY(categorie)
);


CREATE TABLE Produits(
   id_np INTEGER,
   label VARCHAR(20) NOT NULL,
   prix_prod NUMBER(6,2) NOT NULL,
   type_prod VARCHAR(20) NOT NULL,
   CONSTRAINT pk_produits PRIMARY KEY(id_np),
   CONSTRAINT prix_prod_positive CHECK (prix_prod > 0),
   CONSTRAINT type_produit_values CHECK (type_prod in ('cosmetique', 'consommable'))
);


CREATE TABLE Utilisateur(
   login VARCHAR(60),
   nom_user VARCHAR(40) NOT NULL,
   prenom_user VARCHAR(40) NOT NULL,
   date_naissance DATE NOT NULL,
   date_inscription TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   mdp_hash VARCHAR(80) NOT NULL,
   pseudo VARCHAR(30) NOT NULL,
   solde NUMBER(6,2) NOT NULL,
   code_postal_naissance VARCHAR(5) NOT NULL,
   insee_naissance VARCHAR(5) NOT NULL,
   code_postal_residence VARCHAR(5) NOT NULL,
   insee_residence VARCHAR(5) NOT NULL,
   CONSTRAINT pk_utilisateur PRIMARY KEY(login),
   CONSTRAINT fk_utilisateur_naissance FOREIGN KEY(code_postal_naissance, insee_naissance) REFERENCES Cp(code_postal, insee),
   CONSTRAINT fk_utilisateur_residence FOREIGN KEY(code_postal_residence, insee_residence) REFERENCES Cp(code_postal, insee),
   CONSTRAINT solde_positive CHECK (solde >= 0),
   CONSTRAINT inscription_sup_naissance CHECK (date_inscription > date_naissance)
);


CREATE TABLE Partie(
   id_partie INTEGER,
   prix_par_place NUMBER(6,2) NOT NULL,
   date_partie TIMESTAMP NOT NULL,
   duree INTEGER NOT NULL,
   description VARCHAR(1000),
   age_restriction NUMBER(3,0) NOT NULL,
   nb_place_max INTEGER NOT NULL,
   nom VARCHAR(40) NOT NULL,
   date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   code_postal VARCHAR(5) NOT NULL,
   insee VARCHAR(5) NOT NULL,
   dirigeant VARCHAR(60) NOT NULL,
   CONSTRAINT pk_partie PRIMARY KEY(id_partie),
   CONSTRAINT fk_partie_cp FOREIGN KEY(code_postal, insee) REFERENCES Cp(code_postal, insee),
   CONSTRAINT fk_partie_employee FOREIGN KEY(dirigeant) REFERENCES Employee(login_employee),
   CONSTRAINT prix_par_place_positive CHECK (prix_par_place > 0),
   CONSTRAINT duree_positive CHECK (duree > 0),
   CONSTRAINT nb_place_max_positive CHECK (nb_place_max > 0),
   CONSTRAINT age_restriction_positive CHECK (age_restriction > 0),
   CONSTRAINT partie_sup_creation CHECK (date_partie > date_creation)
);


CREATE TABLE Personnage(
   id_personnage INTEGER,
   nom_personnage VARCHAR(15) NOT NULL,
   prenom_personnage VARCHAR(15) NOT NULL,
   force NUMBER(2,0) NOT NULL,
   dexterite NUMBER(2,0) NOT NULL,
   constitution NUMBER(2,0) NOT NULL,
   sagesse NUMBER(2,0) NOT NULL,
   charisme NUMBER(2,0) NOT NULL,
   pv NUMBER(3,0) NOT NULL,
   mana NUMBER(3,0) NOT NULL,
   race VARCHAR(20) NOT NULL,
   genre VARCHAR(20) NOT NULL,
   login VARCHAR(60) NOT NULL,
   CONSTRAINT pk_personnage PRIMARY KEY(id_personnage),
   CONSTRAINT fk_personnage_utilisateur FOREIGN KEY(login) REFERENCES Utilisateur(login),
   CONSTRAINT genre_values CHECK (genre in ('femme', 'homme', 'autre')),
   CONSTRAINT force_range CHECK (0 <= force AND force <= 20),
   CONSTRAINT dexterite_range CHECK (0 <= dexterite AND dexterite <= 20),
   CONSTRAINT constitution_range CHECK (0 <= constitution AND constitution <= 20),
   CONSTRAINT charisme_range CHECK (0 <= charisme AND charisme <= 20),
   CONSTRAINT pv_range CHECK (0 <= pv AND pv <= 100),
   CONSTRAINT mana_range CHECK (0 <= mana AND mana <= 100)
);


CREATE TABLE Participe(
   login VARCHAR(60),
   id_partie INTEGER,
   CONSTRAINT pk_participe PRIMARY KEY(login, id_partie),
   CONSTRAINT fk_participe_utilisateur FOREIGN KEY(login) REFERENCES Utilisateur(login),
   CONSTRAINT fk_participe_partie FOREIGN KEY(id_partie) REFERENCES Partie(id_partie)
);


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
BEGIN
   SELECT nb_place_max INTO nb_place_max FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT COUNT(*) INTO nbPersonne FROM Participe WHERE Participe.id_partie = :new.id_partie;
   SELECT date_partie INTO date_partie FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT date_naissance INTO date_naissance FROM Utilisateur WHERE Utilisateur.login = :new.login;
   SELECT age_restriction INTO age_restriction FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT MONTHS_BETWEEN (CURRENT_DATE, date_naissance)/12 INTO age_utilisateur FROM DUAL;

   IF (nb_place_max <= nbPersonne) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Il n''y a plus de place disponible pour cette partie.');
   END IF;

   IF (date_partie <= CURRENT_TIMESTAMP) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous ne pouvez pas participer à une partie qui a déjà eu lieu.');
   END IF;

   IF (age_restriction >= age_utilisateur) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous n''avez pas l''age requis pour participer à cette partie.');
   END IF;
END;
/



CREATE TABLE Contient(
   id_partie INTEGER,
   id_personnage INTEGER,
   CONSTRAINT pk_contient PRIMARY KEY(id_partie, id_personnage),
   CONSTRAINT fk_contient_partie FOREIGN KEY(id_partie) REFERENCES Partie(id_partie),
   CONSTRAINT fk_contient_personnage FOREIGN KEY(id_personnage) REFERENCES Personnage(id_personnage)
);


CREATE TABLE Reserve(
   login VARCHAR(60),
   id_partie INTEGER,
   nbPersonne INTEGER NOT NULL,
   date_reservation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   CONSTRAINT pk_reserve PRIMARY KEY(login, id_partie),
   CONSTRAINT fk_reserve_utilisateur FOREIGN KEY(login) REFERENCES Utilisateur(login),
   CONSTRAINT fk_reserve_partie FOREIGN KEY(id_partie) REFERENCES Partie(id_partie),
   CONSTRAINT nbPersonne_positive CHECK (nbPersonne > 0)
);


CREATE OR REPLACE TRIGGER trigger_reserve
BEFORE INSERT ON Reserve
FOR EACH ROW
DECLARE
   nb_place_max INTEGER;
   nbPersonne INTEGER;
   date_partie TIMESTAMP;
   date_naissance DATE;
   age_restriction NUMBER(3,0);
   age_utilisateur NUMBER(3,0);
BEGIN
   SELECT nb_place_max INTO nb_place_max FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT SUM(Reserve.nbPersonne) INTO nbPersonne FROM Reserve WHERE Reserve.id_partie = :new.id_partie;
   SELECT date_partie INTO date_partie FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT date_naissance INTO date_naissance FROM Utilisateur WHERE Utilisateur.login = :new.login;
   SELECT age_restriction INTO age_restriction FROM Partie WHERE Partie.id_partie = :new.id_partie;
   SELECT MONTHS_BETWEEN(CURRENT_DATE, date_naissance)/12 INTO age_utilisateur FROM DUAL;

   IF (nb_place_max < nbPersonne + :new.nbPersonne) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Il n''y a plus assez de place pour réserver cette partie.');
   END IF;

   IF (date_partie <= CURRENT_DATE) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous ne pouvez pas réserver une partie qui a déjà eu lieu.');
   END IF;

   IF (age_restriction >= age_utilisateur) THEN
      RAISE_APPLICATION_ERROR(-20000, 'Vous n''avez pas l''age requis pour réserver cette partie.');
   END IF;
END;
/

CREATE TABLE Associe(
   id_partie INTEGER,
   categorie VARCHAR(20),
   CONSTRAINT pk_associe PRIMARY KEY(id_partie, categorie),
   CONSTRAINT fk_associe_partie FOREIGN KEY(id_partie) REFERENCES Partie(id_partie),
   CONSTRAINT fk_associe_categorie FOREIGN KEY(categorie) REFERENCES Theme(categorie)
);


CREATE TABLE Achat(
   login VARCHAR(60),
   id_np INTEGER,
   qa INTEGER NOT NULL,
   date_achat TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   CONSTRAINT pk_achat PRIMARY KEY(login, id_np),
   CONSTRAINT fk_achat_utilisateur FOREIGN KEY(login) REFERENCES Utilisateur(login),
   CONSTRAINT fk_achat_produits FOREIGN KEY(id_np) REFERENCES Produits(id_np),
   CONSTRAINT qa_positive CHECK (qa > 0)
);


CREATE TABLE Amis(
   login VARCHAR(60),
   login2 VARCHAR(60),
   CONSTRAINT pk_amis PRIMARY KEY(login, login2),
   CONSTRAINT fk_amis_utilisateur FOREIGN KEY(login) REFERENCES Utilisateur(login),
   CONSTRAINT fk_amis_utilisateur2 FOREIGN KEY(login2) REFERENCES Utilisateur(login),
   CONSTRAINT login_different_login2 CHECK (login != login2)
);