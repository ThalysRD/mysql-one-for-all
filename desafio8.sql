SELECT 
    AR.artist_name AS artista, AL.album_name AS album
FROM
    SpotifyClone.artists AS AR
        INNER JOIN
    SpotifyClone.albuns AS AL ON AR.artist_id = AL.artist_id
WHERE
    AR.artist_name = 'Walter Phoenix'
GROUP BY AR.artist_name , AL.album_name
ORDER BY album ASC
