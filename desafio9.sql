-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone
SELECT
    COUNT(history_person_id) quantidade_musicas_no_historico
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.person AS p
ON h.history_person_id = p.person_id
WHERE p.person_name = 'Barbara Liskov';