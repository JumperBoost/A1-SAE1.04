CREATE TABLE Ville( 
   codeINSEE INTEGER, 
   latitude INTEGER NOT NULL, 
   longitude INTEGER NOT NULL, 
   codePostal VARCHAR(50) NOT NULL, 
   nomVille VARCHAR(50) NOT NULL, 
   nbHabitants INTEGER NOT NULL, 
   CONSTRAINT ck_ville_nbHabitants CHECK (nbHabitants > 0), 
   CONSTRAINT pk_ville_codeInsee PRIMARY KEY(codeINSEE) 
);

CREATE TABLE TypeOperation( 
   nomService VARCHAR(50), 
   description VARCHAR(150) NOT NULL, 
   prix DECIMAL(15,2) NOT NULL, 
   effetSecondaire VARCHAR(100), 
   CONSTRAINT ck_typeOpe_prix CHECK (prix > 0), 
   CONSTRAINT pk_typeOpe_nomServ PRIMARY KEY(nomService) 
); 
 
CREATE TABLE Clinique( 
   numSiret INTEGER, 
   codeINSEE INTEGER NOT NULL, 
   CONSTRAINT pk_clinique_numSiret PRIMARY KEY(numSiret), 
   CONSTRAINT fk_clinique_codeInsee FOREIGN KEY(codeINSEE) REFERENCES Ville(codeINSEE) 
); 
 
CREATE TABLE Chirurgien( 
   numLicence INTEGER, 
   nom VARCHAR(40) NOT NULL, 
   prenom VARCHAR(40) NOT NULL, 
   numSiret INTEGER NOT NULL, 
   CONSTRAINT pk_chirurgien_numLicence PRIMARY KEY(numLicence), 
   CONSTRAINT fk_chirurgien_numSiret FOREIGN KEY(numSiret) REFERENCES Clinique(numSiret) 
); 
 
CREATE TABLE Patient( 
   numPatient VARCHAR(50), 
   nom VARCHAR(40) NOT NULL, 
   prenom VARCHAR(40) NOT NULL, 
   dateRDV DATE NOT NULL, 
   dateOP DATE NOT NULL, 
   dateDeNaissance DATE NOT NULL, 
   numLicence INTEGER NOT NULL, 
   nomService VARCHAR(50) NOT NULL, 
   CONSTRAINT pk_patient_numPatient PRIMARY KEY(numPatient), 
   CONSTRAINT fk_patient_numLicence FOREIGN KEY(numLicence) REFERENCES 
Chirurgien(numLicence), 
   CONSTRAINT fk_patient_nomService FOREIGN KEY(nomService) REFERENCES 
TypeOperation(nomService) 
); 

CREATE TABLE Services( 
   numTelephone NUMBER(15), 
   nomService VARCHAR(50) NOT NULL, 
   numSiret INTEGER NOT NULL, 
   numLicence INTEGER NOT NULL, 
   CONSTRAINT pk_services_numTelephone PRIMARY KEY(numTelephone), 
   CONSTRAINT fk_services_numSiret FOREIGN KEY(numSiret) REFERENCES Clinique(numSiret), 
   CONSTRAINT fk_services_numLicence FOREIGN KEY(numLicence) REFERENCES 
Chirurgien(numLicence) 
); 
 
CREATE TABLE Pratique( 
   numSiret NUMBER(14), 
   nomService VARCHAR(50), 
   CONSTRAINT pk_pratique_numS_nomS PRIMARY KEY(numSiret, nomService), 
   CONSTRAINT fk_pratique_numSiret FOREIGN KEY(numSiret) REFERENCES Clinique(numSiret), 
   CONSTRAINT fk_pratique_nomService FOREIGN KEY(nomService) REFERENCES 
TypeOperation(nomService) 
); 
 
CREATE TABLE Effectue( 
   numLicence INTEGER, 
   nomService VARCHAR(50), 
   CONSTRAINT pk_effectue_numL_nomS PRIMARY KEY(numLicence, nomService), 
   CONSTRAINT fk_effectue_numLicence FOREIGN KEY(numLicence) REFERENCES 
Chirurgien(numLicence), 
   CONSTRAINT fk_effectue_nomService FOREIGN KEY(nomService) REFERENCES 
TypeOperation(nomService) 
); 
 
CREATE TABLE Facturation( 
   numSiret INTEGER, 
   numPatient VARCHAR(50), 
   datePaiement DATE, 
   montant DECIMAL(15,2) NOT NULL, 
   CONSTRAINT ck_facturation_montant CHECK (montant > 0), 
   CONSTRAINT pk_facturation_numS_numP PRIMARY KEY(numSiret, numPatient), 
   CONSTRAINT fk_facturation_numSiret FOREIGN KEY(numSiret) REFERENCES Clinique(numSiret), 
   CONSTRAINT fk_facturation_numPatient FOREIGN KEY(numPatient) REFERENCES 
Patient(numPatient) 
);