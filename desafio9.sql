SELECT 
    COUNT(P.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.playback AS P ON U.usuario_id = P.usuario_id
WHERE
    U.usuario_name = 'Bill'


