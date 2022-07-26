SELECT 
    U.usuario_name AS usuario,
    COUNT(P.song_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(DISTINCT S.duration_songs_in_seconds/60),2)  AS total_minutos
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.playback AS P ON U.usuario_id = P.usuario_id
        INNER JOIN
    SpotifyClone.songs AS S ON S.song_id = P.song_id
GROUP BY U.usuario_name
ORDER BY U.usuario_name
