-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT
    p.person_name AS usuario,
    h.history_music_id AS qt_de_musicas_ouvidas,
    ROUND(SUM(m.music_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.person AS 
    INNER JOIN SpotifyClone.history AS h ON p.person_id = h.history_person_id
    INNER JOIN SpotifyClone.music AS m ON m.musci_id = h.history_musci_id
ORDER BY p.person_name
ORDER BY p.person_name ASC;


-- SELECT
--     ROUND(SUM(music_duration) / 60, 2) AS total_minutos
-- FROM SpotifyClone.music;