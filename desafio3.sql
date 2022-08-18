-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT
    person_name AS usuario,
    COUNT(*) AS qt_de_musicas_ouvidas,
    ROUND(SUM(m.music_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.person AS p
    INNER JOIN SpotifyClone.history AS h ON p.person_id = h.history_person_id
    INNER JOIN SpotifyClone.music AS m ON m.music_id = h.history_music_id
GROUP BY person_name
ORDER BY person_name ASC;
