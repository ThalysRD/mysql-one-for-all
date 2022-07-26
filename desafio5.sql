SELECT DISTINCT
    S.song_name AS cancao, COUNT(P.usuario_id) AS reproducoes
FROM
    SpotifyClone.songs AS S
        INNER JOIN
    SpotifyClone.playback AS P ON S.song_id = P.song_id
GROUP BY S.song_name
ORDER BY reproducoes DESC , S.song_name ASC
LIMIT 2

