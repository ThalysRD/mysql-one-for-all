    
SELECT U.usuario_name AS usuario,
CASE 
WHEN MAX(P.reproduction_date >= "2021%") 
THEN 'Usuário ativo' 
ELSE 'Usuário inativo' 
END condicao_usuario

FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.playback AS P
ON U.usuario_id = P.usuario_id
GROUP BY U.usuario_name 
ORDER BY U.usuario_name 
