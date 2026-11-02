# REACTIO - Sprint 1 (Database / Oracle)

Entrega de banco de dados para o fluxo inicial do REACTIO: cadastro de usuário, leitura de afirmações sobre energia nuclear, resposta e consulta à explicação com referências.

## Escopo

O modelo cobre somente os dados essenciais desta Sprint 1. Não inclui trilhas, gamificação, níveis, relatórios, controle de sessão ou outros recursos futuros.

## Arquivos

- `docs/modelagem.md`: modelo conceitual, lógico e físico, relacionamentos e justificativa de 3FN.
- `sql/01_ddl.sql`: tabelas, chaves, restrições e índices Oracle.
- `sql/02_dml.sql`: cinco registros por tabela para demonstração.
- `sql/03_consultas.sql`: consultas de demonstração com `JOIN`.

## Execução

Em um schema Oracle vazio ou dedicado, execute os scripts nesta ordem:

1. `sql/01_ddl.sql`
2. `sql/02_dml.sql`
3. `sql/03_consultas.sql`

Os scripts de criação e carga são destinados a uma primeira execução no schema. Para reexecutar, recrie um schema de desenvolvimento vazio ou remova previamente os objetos de demonstração de forma controlada.

## Segurança de credenciais

`USUARIO.SENHA_HASH` guarda somente um hash produzido pela aplicação com algoritmo apropriado para senhas (por exemplo, Argon2id ou bcrypt), nunca a senha original. Os hashes inseridos no DML são marcadores fictícios para dados de demonstração e não permitem login.
