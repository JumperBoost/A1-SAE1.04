-- Attaquants: M. Franceus-Cointrel, N. Lopez Rojas, A. Deschanel, H. Rigaux, J. Renaud
-- Défenseurs: R. Duong, M. Gayed, R. Cathelin, L. Martin

-- Requêtes du jeu de données des défenseurs


-- Q1
SELECT AVG(prix) FROM TypeOperation;


-- Q2
SELECT nom, prenom FROM patient p JOIN TypeOperation t 
ON p.nomService = t.nomService
WHERE prix > (SELECT AVG(prix) FROM TypeOperation);


-- Q3
SELECT nom, prenom FROM patient p JOIN TypeOperation T 
ON p.nomService = t.nomService
WHERE prix = (SELECT MAX(prix) FROM TypeOperation);


-- Q4
SELECT nomService FROM (
SELECT nomService, COUNT(*) AS nb FROM pratique 
GROUP BY nomService
)
WHERE nb = (SELECT COUNT(*) FROM clinique);


-- Q5
SELECT nomService, prix FROM TypeOperation
ORDER BY prix DESC;


-- Q6
SELECT nom, prenom, dateDeNaissance FROM patient 
ORDER BY dateDeNaissance DESC;


-- Q7
SELECT p.numSiret, COUNT(DISTINCT e.nomService) FROM
clinique c JOIN pratique p ON c.numSiret = p.numSiret
JOIN effectue e ON e.nomService = p.nomService
GROUP BY p.numSiret;


-- Q8
SELECT cn.codeINSEE, nomVille, COUNT(numPatient) FROM 
patient p JOIN chirurgien c ON p.numLicence=c.numLicence
JOIN clinique cn ON c.numSiret=cn.numSiret
JOIN ville v ON cn.codeINSEE=v.codeINSEE
GROUP BY cn.codeINSEE, nomVille;


-- Q9
SELECT description FROM typeOperation t
JOIN pratique p ON t.nomService = p.nomService
WHERE numSiret = 890123456
INTERSECT
SELECT description FROM typeOperation t
JOIN pratique p ON t.nomService = p.nomService
WHERE numSiret = 901234567;


-- Q10 
SELECT nom, prenom FROM patient
UNION
SELECT nom, prenom FROM chirurgien;


-- Q11
SELECT nomService FROM pratique
WHERE numSiret = 123456789
MINUS
SELECT nomService FROM pratique
WHERE numSiret = 987654321;
