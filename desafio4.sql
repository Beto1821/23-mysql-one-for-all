-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT
    person_name AS usuario,
    IF(
        YEAR(MAX(h.history_reproduction_date)) >= 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) AS status_usuario
FROM SpotifyClone.person AS p
    INNER JOIN SpotifyClone.history AS h ON p.person_id = h.history_person_id
GROUP BY person_name    
ORDER BY person_name ASC;