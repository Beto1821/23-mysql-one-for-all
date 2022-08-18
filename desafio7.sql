-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone
SELECT 
   artist_name AS artista,
   album_name AS album,
   COUNT(follower_artist_id) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb ON  art.artist_id = alb.album_artist_id
INNER JOIN SpotifyClone.follower AS fol ON art.artist_id = fol.follower_artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;