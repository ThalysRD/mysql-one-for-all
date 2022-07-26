SELECT 
    AR.artist_name AS artista, AL.album_name AS album, COUNT(F.artist_id) AS seguidores
FROM
    SpotifyClone.artists AS AR
        INNER JOIN
    SpotifyClone.albuns AS AL ON AR.artist_id = AL.artist_id
        INNER JOIN
    SpotifyClone.following AS F ON AR.artist_id = F.artist_id
    GROUP BY AR.artist_name, AL.album_name 
    ORDER BY seguidores DESC, artista ASC, album ASC
    