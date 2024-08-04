-- Question 1
SELECT ROUND(AVG(age),1) AS age_avg FROM (
SELECT p.id_partie,MONTHS_BETWEEN (CURRENT_DATE, u.date_naissance)/12 AS age
FROM Utilisateur u, Participe p, Partie pa, DUAL
WHERE u.login=p.login AND p.id_partie=pa.id_partie
AND pa.nom='On n''embête pas les yordles'
);


-- Question 2
SELECT COUNT (DISTINCT participe.login)
FROM participe,personnage,partie
WHERE participe.id_partie=partie.id_partie
AND participe.login=personnage.login
AND partie.nom='Épopée Stellaire : Marées Cosmiques'
AND personnage.force>12;


-- Question 3
SELECT COUNT(distinct login) FROM Participe p JOIN Partie pa ON p.id_partie=pa.id_partie
JOIN Employee e ON e.login_employee=pa.dirigeant
WHERE e.prenom_employee='Nathan-Raphaël';


-- Question 4
SELECT login, date_inscription FROM Utilisateur ORDER BY date_inscription DESC;


-- Question 5
SELECT COUNT (DISTINCT login) FROM (
(
SELECT login FROM Participe p JOIN PARTIE Pa ON p.id_partie=Pa.id_partie WHERE Pa.nom ='Épopée Stellaire : Marées Cosmiques'
INTERSECT
SELECT login FROM Participe p JOIN PARTIE Pa ON p.id_partie=Pa.id_partie WHERE Pa.nom='La Malédiction de Tourteroc'
MINUS
SELECT login FROM Participe p JOIN PARTIE Pa ON p.id_partie=Pa.id_partie WHERE Pa.nom= 'On n''embête pas les yordles')
);


-- Question 6
SELECT u.login, COUNT (DISTINCT id_personnage) AS nbPersonnages
FROM Personnage p JOIN Utilisateur u ON p.login=u.login
GROUP BY u.login ORDER BY nbPersonnages DESC;


-- Question 7
SELECT login FROM
   (SELECT login, COUNT(DISTINCT id_partie) as val 
   FROM reserve GROUP BY login) 
WHERE val=(SELECT MAX(val) FROM 
(SELECT login, COUNT (DISTINCT id_partie) as val
   FROM reserve
   GROUP BY login)
);

-- Question 8
SELECT login from (
SELECT distinct login, SUM(qa) as sum FROM achat a join produits p
on a.id_np = p.id_np
WHERE type_prod = 'cosmetique'
group by (login)
)
WHERE sum > 1;


-- Question 9
SELECT id_partie FROM Associe WHERE categorie='Contemporain'
UNION
SELECT id_partie FROM Associe WHERE categorie='Horreur';


-- Question 10
SELECT nom_ville FROM Ville v JOIN Cp cp ON v.insee=cp.insee JOIN Partie p ON cp.code_postal=p.code_postal JOIN Contient c ON p.id_partie=c.id_partie JOIN Personnage pe ON c.id_personnage=pe.id_personnage WHERE pe.nom_personnage='Tyminos' AND cp.insee=p.insee;


-- Question 11
SELECT dirigeant FROM
    (SELECT dirigeant, COUNT(DISTINCT categorie) as val
    FROM Associe a JOIN Partie p ON a.id_partie=p.id_partie
    GROUP BY dirigeant)
WHERE val = (SELECT MAX(val) FROM
 (SELECT dirigeant, COUNT(DISTINCT categorie) as val
    FROM Associe a JOIN Partie p ON a.id_partie=p.id_partie
    GROUP BY dirigeant));

-- Question 12
SELECT distinct nom_personnage, charisme FROM
personnage p JOIN contient c ON p.id_personnage = c.id_personnage
JOIN associe a ON a.id_partie = c.id_partie
WHERE (categorie='Fantaisie'  OR categorie='Horreur') AND login='lorenzo-eden@gigglemail.com'
ORDER BY charisme DESC;


-- Question 13
SELECT id_partie from associe
MINUS
select id_partie from associe
Where categorie='Fantaisie';


-- Question 14
SELECT login FROM utilisateur
MINUS
SELECT login FROM participe;

-- Question 15
SELECT login2 AS "Amis de Vivien" FROM Amis
WHERE login='lopez-vivien@hotmail.com';