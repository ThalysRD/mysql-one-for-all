SELECT 
    S.song_name AS nome, COUNT(P.usuario_id) AS reproducoes
FROM
SpotifyClone.users AS U 
        INNER JOIN
    SpotifyClone.playback AS P ON U.usuario_id = P.usuario_id 
    INNER JOIN SpotifyClone.songs AS S ON S.song_id = P.song_id
    WHERE U.plan_id = 1 OR U.plan_id = 4
GROUP BY nome
ORDER BY nome ASC