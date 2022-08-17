-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone
SELECT 
    p.person_name AS usuario,
    h.history_music_id  AS qt_de_musicas_ouvidas,
    SUM(m.music_duration /60) AS total_minutos
FROM 
    person AS p,
    history AS h,
    music AS m
ORDER BY p.person;



