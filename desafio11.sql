-- Active: 1660079668896@@127.0.0.1@3306@SpotifyClone
SELECT
    music_name nome_musica,
    CASE
      WHEN music_name LIKE'%Amar%' THEN REPLACE(music_name, 'Amar', 'Code Review')
      WHEN music_name LIKE'%SUPERSTAR%' THEN REPLACE(music_name, 'SUPERSTAR', 'SUPERDEV')
      WHEN music_name LIKE'%Bard%' THEN REPLACE(music_name, 'Bard', 'QA')
      WHEN music_name LIKE'%SOUL%' THEN REPLACE(music_name, 'SOUL', 'CODE')
      WHEN music_name LIKE'%Pais%' THEN REPLACE(music_name, 'Pais', 'Pull Requests')      
      END AS novo_nome
FROM SpotifyClone.music
HAVING novo_nome IS NOT NULL
ORDER BY novo_nome DESC;
