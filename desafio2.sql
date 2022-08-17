SELECT
    COUNT(DISTINCT m.music_id) cancoes,
    COUNT(DISTINCT ar.artist_id) artistas,
    COUNT(DISTINCT al.album_id) albuns
FROM
    SpotifyClone.music AS m,
    SpotifyClone.artist AS ar,
    SpotifyClone.album AS al;