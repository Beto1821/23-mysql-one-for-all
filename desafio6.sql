-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT
    MIN(plan_value) faturamento_minimo,
    MAX(plan_value) faturamento_maximo,
    ROUND(AVG(plan_value), 2) faturamento_medio,
    SUM(plan_value) faturamento_total
FROM SpotifyClone.plan AS pl
    INNER JOIN SpotifyClone.person AS pe ON pl.plan_id = pe.person_plan_id;