-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone
SELECT 
    music_name cancao,
    COUNT(h.history_music_id) reproducoes 
FROM 
    SpotifyClone.music AS m
INNER JOIN SpotifyClone.history AS h
ON m.music_id = h.history_music_id
GROUP BY music_name
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
