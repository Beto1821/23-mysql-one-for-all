-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT 
    person_name AS usuario, 
    IF( YEAR(person_signature_date) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario 
FROM SpotifyClone.person;