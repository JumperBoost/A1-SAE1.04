-- Insertion de données dans la table Ville 
INSERT INTO Ville VALUES (1, 41.0082, 28.9784, '34000', 'Istanbul', 15472451); 
INSERT INTO Ville VALUES (2, 39.9334, 32.8597, '06100', 'Ankara', 5639076); 
INSERT INTO Ville VALUES (3, 38.4237, 27.1428, '35210', 'Izmir', 4320519); 
INSERT INTO Ville VALUES (4, 37.5665, 126.9780, '04501', 'Seoul', 9720846); 
INSERT INTO Ville VALUES (5, 35.6895, 139.6917, '100-0001', 'Tokyo', 13617445); 
INSERT INTO Ville VALUES (6, 35.1796, 129.0756, '600-011', 'Busan', 3403135); 
INSERT INTO Ville VALUES (7, 48.8566, 2.3522, '75001', 'Paris', 2200000); 
INSERT INTO Ville VALUES (8, 41.9028, 12.4964, '00118', 'Perpignan', 2870500); 
INSERT INTO Ville VALUES (9, 45.7640, 4.8357, '69000', 'Narnia', 515695); 
INSERT INTO Ville VALUES (10, 43.7102, 7.2620, '06000', 'Montpellier', 344064); 
 
-- Insertion de données dans la table TypeOperation 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('FUT', 'Transplantation d unité folliculaire', 2500.00, 'Démangeaisons'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('FUE', 'Extraction d unité folliculaire', 6500.00, 'Gonflements'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('IFA', 'Implantation Folliculaire Automatisée', 15000.00, 'Saignements Cuir Chevelu'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('DHI', 'Implantation Capillaire Directe', 3900.00, 'Ecchymoses'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('MCR', 'Microgreffe', 8000.00, 'Enflure'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('CAP', 'Autogreffe Capillaire', 12000.00, 'Saignements'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('TRC', 'Régénération Tissulaire', 9500.00, 'Démangeaisons'); 
INSERT INTO TypeOperation (nomService, description, prix, effetSecondaire) VALUES 
 ('SCT', 'Thérapie par Cellules Souches', 18000.00, 'Douleur'); 
 
-- Insertion de données dans la table Clinique 
INSERT INTO Clinique VALUES 
  (123456789, 1); 
INSERT INTO Clinique VALUES 
  (987654321, 2); 
INSERT INTO Clinique VALUES 
  (456789123, 3); 
INSERT INTO Clinique VALUES 
  (234567890, 4); 
INSERT INTO Clinique VALUES 
  (345678901, 5); 
INSERT INTO Clinique VALUES 
(456789012, 6); 
INSERT INTO Clinique VALUES 
  (567890123, 7); 
INSERT INTO Clinique VALUES 
  (678901234, 8); 
INSERT INTO Clinique VALUES 
  (789012345, 9); 
INSERT INTO Clinique VALUES 
  (890123456, 10); 
INSERT INTO Clinique VALUES 
  (901234567, 5); 
 
-- Insertion de données dans la table Chirurgien 
INSERT INTO Chirurgien VALUES 
  (101, 'Lenon', 'John', 123456789); 
INSERT INTO Chirurgien VALUES 
  (102, 'Parker', 'Jane', 987654321); 
INSERT INTO Chirurgien VALUES 
  (103, 'Son', 'Sung', 456789123); 
INSERT INTO Chirurgien VALUES 
  (104, 'Martinez', 'Carlos', 234567890); 
INSERT INTO Chirurgien VALUES 
  (105, 'Huang', 'Xiao', 345678901); 
INSERT INTO Chirurgien VALUES 
  (106, 'Gomes', 'Fernanda', 456789012); 
INSERT INTO Chirurgien VALUES 
  (107, 'Takahashi', 'Haruki', 567890123); 
INSERT INTO Chirurgien VALUES 
  (108, 'Kumar', 'Raj', 678901234); 
INSERT INTO Chirurgien VALUES 
  (109, 'Nguyen', 'Thi', 789012345); 
INSERT INTO Chirurgien VALUES 
  (110, 'Ivanov', 'Dmitri', 890123456); 
INSERT INTO Chirurgien VALUES 
  (111, 'Santos', 'Gabriela', 901234567); 
INSERT INTO Chirurgien VALUES 
  (112, 'Tanaka', 'Yukihiro', 123456789); 
INSERT INTO Chirurgien VALUES 
  (113, 'Garcia', 'Luis', 234567890); 
 
-- Insertion de données dans la table Patient 
INSERT INTO Patient VALUES 
  ('P001', 'Martin', 'Lilian', '31-08-2005', '15-01-2023', '01-01-2000', 101, 'FUT'); 
INSERT INTO Patient VALUES 
  ('P002', 'Smith', 'Jane', '15-02-2000', '20-02-2023', '20-05-1995', 102, 'FUE'); 
INSERT INTO Patient VALUES 
  ('P003', 'Kim', 'Sung', '20-03-2001', '25-03-2023', '12-11-1990', 103, 'IFA'); 
INSERT INTO Patient VALUES
('P004', 'Johnson', 'Michael', '11-09-2001', '20-04-2023', '15-08-1983', 104, 'DHI'); 
INSERT INTO Patient VALUES 
  ('P005', 'Garcia', 'Maria', '10-05-1990', '15-05-2023', '28-03-1972', 105, 'MCR'); 
INSERT INTO Patient VALUES 
  ('P006', 'Faux', 'Maxime', '10-12-2005', '30-06-2023', '10-12-1990', 106, 'CAP'); 
INSERT INTO Patient VALUES 
  ('P007', 'Smith', 'David', '12-07-1999', '17-07-2023', '03-05-1983', 107, 'TRC'); 
INSERT INTO Patient VALUES 
  ('P008', 'Lee', 'Hae-Won', '28-08-1994', '02-09-2023', '22-11-1995',103, 'SCT'); 
INSERT INTO Patient VALUES 
  ('P009', 'Brown', 'Sophie', '15-09-1976', '20-09-2023', '18-07-1988', 109, 'FUE'); 
INSERT INTO Patient VALUES 
  ('P010', 'Sato', 'Yuki', '03-10-1968', '08-10-2023', '07-02-1992', 110, 'TRC'); 
INSERT INTO Patient VALUES 
  ('P011', 'Silva', 'Eduardo', '20-11-1980', '25-11-2023', '12-09-1979', 112, 'TRC'); 
INSERT INTO Patient VALUES 
  ('P012', 'Wang', 'Li', '07-12-1982', '12-12-2023', '25-04-1998', 112, 'MCR'); 
INSERT INTO Patient VALUES 
  ('P013', 'Nakashima', 'Yuko', '25-01-1959', '30-01-2024', '30-06-1982', 113, 'IFA'); 
   
-- Insertion de données dans la table Services 
INSERT INTO Services VALUES ('1234567890', 'FUT', 123456789, 101); 
INSERT INTO Services VALUES ('9876543210', 'FUE', 987654321, 102); 
INSERT INTO Services VALUES ('4567890123', 'IFA', 456789123, 103); 
INSERT INTO Services VALUES ('1112223333', 'DHI', 234567890, 104); 
INSERT INTO Services VALUES ('4445556666', 'MCR', 345678901, 105); 
INSERT INTO Services VALUES ('7778889999', 'CAP', 456789012, 106); 
INSERT INTO Services VALUES ('1234587890', 'TRC', 567890123, 107); 
INSERT INTO Services VALUES ('9877543210', 'SCT', 678901234, 108); 
INSERT INTO Services VALUES ('1112223334', 'LFT', 789012345, 109); 
INSERT INTO Services VALUES ('4445556667', 'BRO', 890123456, 110); 
INSERT INTO Services VALUES ('7778889990', 'THI', 901234567, 111); 
INSERT INTO Services VALUES ('1234567891', 'ARB', 123456789, 112); 
INSERT INTO Services VALUES ('9876543211', 'NCK', 234567890, 113); 
 
-- Insertion de données dans la table Pratique 
INSERT INTO Pratique VALUES (123456789, 'FUT'); 
INSERT INTO Pratique VALUES (987654321, 'FUE'); 
INSERT INTO Pratique VALUES (456789123, 'IFA'); 
INSERT INTO Pratique VALUES (234567890, 'DHI'); 
INSERT INTO Pratique VALUES (345678901, 'MCR'); 
INSERT INTO Pratique VALUES (456789012, 'CAP'); 
INSERT INTO Pratique VALUES (567890123, 'TRC'); 
INSERT INTO Pratique VALUES (678901234, 'SCT'); 
INSERT INTO Pratique VALUES (789012345, 'FUE'); 
INSERT INTO Pratique VALUES (890123456, 'IFA'); 
INSERT INTO Pratique VALUES (901234567, 'IFA'); 
INSERT INTO Pratique VALUES (123456789, 'SCT'); 
INSERT INTO Pratique VALUES (234567890, 'FUE'); 
 
-- Insertion de données dans la table Effectue 
INSERT INTO Effectue VALUES (101, 'FUT'); 
INSERT INTO Effectue VALUES (102, 'FUE'); 
INSERT INTO Effectue VALUES (103, 'IFA'); 
INSERT INTO Effectue VALUES (104, 'DHI'); 
INSERT INTO Effectue VALUES (105, 'MCR'); 
INSERT INTO Effectue VALUES (106, 'CAP'); 
INSERT INTO Effectue VALUES (107, 'TRC'); 
INSERT INTO Effectue VALUES (108, 'SCT'); 
INSERT INTO Effectue VALUES (109, 'FUT'); 
INSERT INTO Effectue VALUES (110, 'IFA'); 
INSERT INTO Effectue VALUES (111, 'IFA'); 
INSERT INTO Effectue VALUES (112, 'MCR'); 
INSERT INTO Effectue VALUES (113, 'FUE'); 
 
-- Insertion de données dans la table Facturation 
INSERT INTO Facturation VALUES (123456789, 'P001', '20-01-2023', 2500.00); 
INSERT INTO Facturation VALUES (987654321, 'P002', '25-02-2023', 6500.00); 
INSERT INTO Facturation VALUES (456789123, 'P003', '30-03-2023', 15000.00); 
INSERT INTO Facturation VALUES (234567890, 'P004', '20-04-2023', 3900.00); 
INSERT INTO Facturation VALUES (345678901, 'P005', '25-05-2023', 8000.00); 
INSERT INTO Facturation VALUES (456789012, 'P006', '30-06-2023', 12000.00); 
INSERT INTO Facturation VALUES (567890123, 'P007', '17-07-2023', 9500.00); 
INSERT INTO Facturation VALUES (678901234, 'P008', '02-09-2023', 18000.00); 
INSERT INTO Facturation VALUES (789012345, 'P009', '20-09-2023', 5500.00); 
INSERT INTO Facturation VALUES (890123456, 'P010', '08-10-2023', 4200.00); 
INSERT INTO Facturation VALUES (901234567, 'P011', '25-11-2023', 10500.00); 
INSERT INTO Facturation VALUES (123456789, 'P012', '12-12-2023', 6800.00); 
INSERT INTO Facturation VALUES (234567890, 'P013', '30-01-2024', 5000.00);