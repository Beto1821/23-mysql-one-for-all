-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone

SELECT
    artist_name artista,
    album_name album
FROM SpotifyClone.artist AS art
    INNER JOIN SpotifyClone.album AS alb ON art.artist_id = alb.album_artist_id
HAVING artista = 'Elis Regina';