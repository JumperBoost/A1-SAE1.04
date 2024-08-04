-- Suppression des tables avec des clés étrangères référençant d'autres tables 
DROP TABLE Facturation; 
DROP TABLE Effectue; 
DROP TABLE Services; 
DROP TABLE Patient; 
 
-- Suppression des tables référencées par des clés étrangères dans d'autres tables 
DROP TABLE Chirurgien; 
DROP TABLE Pratique; 
DROP TABLE TypeOperation; 
DROP TABLE Clinique; 
 
-- Suppression des tables restantes qui ne sont pas liées par des contraintes de clé étrangère 
DROP TABLE Ville;