# One For All — SQL e modelagem relacional

Modelo relacional de um catálogo musical com usuários, planos, artistas, álbuns, músicas, seguidores e histórico de reprodução, acompanhado de consultas analíticas.

**Projeto de formação — MySQL, chaves estrangeiras, relacionamentos, JOINs e agregações.**

## Entrega implementada

`desafio1.sql` cria e popula o banco de demonstração `SpotifyClone`. As consultas de `desafio2.sql` a `desafio10.sql` exploram o conjunto de dados.

| Arquivo | Consulta ou operação |
|---|---|
| `desafio1.sql` | Criação das tabelas, relacionamentos e dados |
| `desafio2.sql` | Quantidade de músicas, artistas e álbuns |
| `desafio3.sql` | Músicas e minutos ouvidos por usuário |
| `desafio4.sql` | Classificação de atividade conforme o histórico |
| `desafio5.sql` | Duas músicas com mais reproduções |
| `desafio6.sql` | Valores mínimo, máximo, médio e total associados aos planos dos usuários |
| `desafio7.sql` | Artistas, álbuns e quantidade de seguidores |
| `desafio8.sql` | Álbuns de um artista específico |
| `desafio9.sql` | Quantidade de músicas no histórico de um usuário |
| `desafio10.sql` | Reproduções por usuários dos planos pessoal ou gratuito |

O arquivo `desafio11.sql` está vazio e não é apresentado como funcionalidade implementada.

## Modelo

| Tabela | Papel |
|---|---|
| `plans` | Planos e respectivos valores |
| `users` | Usuários e vínculo com o plano |
| `artists` | Artistas |
| `albuns` | Álbuns associados aos artistas |
| `songs` | Músicas associadas aos álbuns |
| `following` | Associação entre usuários e artistas seguidos |
| `playback` | Associação entre usuários, músicas e data de reprodução |

## Executar

Use uma instância MySQL de desenvolvimento e abra o cliente na raiz do projeto:

```sh
mysql -u seu_usuario -p
```

Dentro do cliente:

```sql
SOURCE desafio1.sql;
SOURCE desafio3.sql;
SOURCE desafio5.sql;
SOURCE desafio7.sql;
```

**`desafio1.sql` começa com `DROP DATABASE IF EXISTS SpotifyClone`.** Execute somente em um ambiente de demonstração onde esse banco possa ser recriado.

## O que este projeto demonstra

- Decomposição de dados em entidades e associações.
- Integridade referencial com chaves estrangeiras.
- Consultas com `INNER JOIN`, `GROUP BY`, `ORDER BY`, `CASE` e `LIMIT`.
- Agregações com `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` e `ROUND`.

## Escopo e próximos passos

É um estudo SQL com dados do exercício, sem integração com o serviço Spotify e sem API ou interface web. A condição temporal de `desafio4.sql` está fixa no contexto do exercício; a implementação também armazena idade e algumas datas como texto. São pontos de evolução para uma modelagem com tipos mais adequados e consultas parametrizadas.

As consultas foram conferidas por leitura, sem execução em MySQL nesta etapa. Não há métricas de desempenho ou resultados de testes anunciados.

## Autoria e créditos

**Thalys Rocha Rodrigues:** criação do schema, carga dos dados e consultas registradas no [PR original #112](https://github.com/tryber/sd-020-a-mysql-one-for-all/pull/112). O repositório original é privado.

**Trybe:** proposta de normalização, conjunto de dados, requisitos e infraestrutura de avaliação. A publicação deve seguir a limpeza oficial dos arquivos de avaliação e manter esses créditos.

[GitHub](https://github.com/ThalysRD) · [Portfólio](https://portifolio-lyart-gamma-56.vercel.app/)
