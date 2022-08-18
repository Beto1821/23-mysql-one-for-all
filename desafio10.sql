-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT
    music_name nome,
    COUNT(history_music_id) reproducoes
FROM SpotifyClone.music AS mu
    INNER JOIN SpotifyClone.history AS his ON his.history_music_id = mu.music_id
    INNER JOIN SpotifyClone.person AS per ON per.person_id = his.history_person_id
WHERE per.person_plan_id = 1 OR per.person_plan_id = 3
GROUP BY nome
ORDER BY nome;
