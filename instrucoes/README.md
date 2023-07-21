
# Instruções SQL

O SQL (Structured Query Language) é uma linguagem de consulta estruturada utilizada para interagir com bancos de dados relacionais. Ele fornece diversas instruções para realizar diferentes operações no banco de dados. As principais categorias de instruções SQL são:

# Explicando as principais instruções do SQL: DML, DDL, DCL e TCL:

## DML (Data Manipulation Language)

As instruções DML são usadas para manipular os dados dentro das tabelas do banco de dados. Elas permitem que você realize operações como inserção, atualização, exclusão e seleção de registros.

### Exemplos de Instruções DML:

1. **INSERT**: Insere novos registros em uma tabela.

   Exemplo:
   ```sql
   INSERT INTO tabela (coluna1, coluna2, coluna3) VALUES (valor1, valor2, valor3);
   ```

2. **UPDATE**: Atualiza os valores de um ou mais registros em uma tabela.

   Exemplo:
   ```sql
   UPDATE tabela SET coluna1 = novo_valor WHERE condição;
   ```

3. **DELETE**: Exclui registros de uma tabela com base em uma condição.

   Exemplo:
   ```sql
   DELETE FROM tabela WHERE condição;
   ```

4. **SELECT**: Recupera registros de uma ou mais tabelas com base em uma condição.

   Exemplo:
   ```sql
   SELECT coluna1, coluna2 FROM tabela WHERE condição;
   ```

## DDL (Data Definition Language)

As instruções DDL são usadas para definir e gerenciar a estrutura do banco de dados. Elas permitem que você crie, altere e exclua objetos do banco de dados, como tabelas, índices e restrições.

### Exemplos de Instruções DDL:

1. **CREATE**: Cria novos objetos no banco de dados, como tabelas e índices.

   Exemplo:
   ```sql
   CREATE TABLE tabela (
       coluna1 tipo_de_dado,
       coluna2 tipo_de_dado,
       ...
   );
   ```

2. **ALTER**: Altera a estrutura de objetos existentes no banco de dados.

   Exemplo:
   ```sql
   ALTER TABLE tabela ADD coluna tipo_de_dado;
   ```

3. **DROP**: Exclui objetos do banco de dados, como tabelas e índices.

   Exemplo:
   ```sql
   DROP TABLE tabela;
   ```

## DCL (Data Control Language)

As instruções DCL são usadas para controlar as permissões de acesso e segurança do banco de dados. Elas permitem que você conceda ou revogue privilégios de acesso aos usuários.

### Exemplos de Instruções DCL:

1. **GRANT**: Concede privilégios de acesso a um usuário ou grupo de usuários.

   Exemplo:
   ```sql
   GRANT SELECT, INSERT ON tabela TO usuario;
   ```
   Veja mais exemplos: [Click Aqui](dcl_grant.sql)

2. **REVOKE**: Revoga privilégios de acesso previamente concedidos a um usuário.

   Exemplo:
   ```sql
   REVOKE INSERT ON tabela FROM usuario;
   ```


## TCL (Transaction Control Language)

As instruções TCL são usadas para controlar transações no banco de dados. Elas permitem que você gerencie o início, fim e rollback (desfazimento) de transações.

### Exemplos de Instruções TCL:

1. **COMMIT**: Confirma todas as alterações feitas dentro de uma transação.

   Exemplo:
   ```sql
   COMMIT;
   ```

2. **ROLLBACK**: Desfaz todas as alterações feitas dentro de uma transação.

   Exemplo:
   ```sql
   ROLLBACK;
   ```

3. **SAVEPOINT**: Define um ponto de salvamento dentro de uma transação para realizar rollback até esse ponto.

   Exemplo:
   ```sql
   SAVEPOINT ponto;
   ```

4. **SET TRANSACTION**: Define opções de controle de transação, como isolamento e modo de confirmação.

   Exemplo:
   ```sql
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
   ```

Essas são algumas das principais instruções SQL que você utilizará para interagir com bancos de dados relacionais. Com essas instruções, você poderá realizar operações de manipulação de dados, definição de estrutura, controle de acesso e gerenciamento de transações no seu banco de dados SQL Server.