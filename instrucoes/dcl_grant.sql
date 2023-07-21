--Parte 1 CONCEDE-GRANT
-- Cria um login e da permissoes no banco

exec master.dbo.sp_addlogin 'UsrTeste','SenhaTeste'
EXEC sp_grantdbaccess 'UsrTeste','UsrTeste'

EXEC sp_revokedbaccess 'UsrTeste'


--Concedendo Acesso DE ATUALIZACAO PARA UsrTeste. 
GRANT UPDATE ON FUNCIONARIOS TO UsrTeste; 

--Concedendo Acesso DE INSERT PARA UsrTeste. 
GRANT INSERT ON FUNCIONARIOS TO UsrTeste; 

--Concedendo Acesso DE Leitura PARA UsrTeste. 
GRANT SELECT ON FUNCIONARIOS TO UsrTeste;

--Concedendo Acesso DE DELETE PARA UsrTeste. 
GRANT DELETE ON FUNCIONARIOS TO UsrTeste;

GO -- Essa cláusula indica o fim do lote de comandos


--criando procedure
CREATE PROCEDURE testproc 
AS
SELECT * FROM cidades
GO 

--executando procedure
EXEC testproc

--Concedendo Acesso PARA EXCUTAR PROC TESTE_PROC PARA UsrTeste.
GRANT EXECUTE ON testproc TO UsrTeste  

--VERIFICANDO USUARIO LOGADO
select CURRENT_USER

--ALTERANDO USUARIO LOGADO

SETUSER 'UsrTeste'
--VERIFICANDO USUARIO LOGADO
select CURRENT_USER

--EXECUTANDO PROCEDURE COM USUARIO UsrTeste
EXEC testproc

--TESTANDO SELECT
SELECT  * from FUNCIONARIOS

--TESTANDO INSERT
INSERT into FUNCIONARIOS values ('Maria','1000','TI')

--TESTANDO UPDATE
UPDATE FUNCIONARIOS set nome='Marisa'
where id = '7'

--TESTANDO DELETE
DELETE FROM FUNCIONARIOS
WHERE ID = '7'
