-------------------------------------------------------------------------------------------------------------------------

-- DDL  CRIACAO DA TABELA PARA EXERCICIOS DML

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE funcionarios
(
    id INT IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2),
    setor VARCHAR(30)
)


-- Tabela temporaria
CREATE TABLE #funcionarios2 
(
    id INT IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2),
    setor VARCHAR(30)
)




-------------------------------------------------------------------------------------------------------------------------

-- EXEMPLOS DE DML 

-------------------------------------------------------------------------------------------------------------------------



-- SELECT
----------------------------------------------------
SELECT * 
  FROM funcionarios

SELECT nome,
       setor 
  FROM funcionarios 

SELECT nome,
       setor AS depto 
  FROM funcionarios 



-- INSERT
----------------------------------------------------

INSERT INTO funcionarios VALUES ('Joao',1000,''), ('Jose',2000,''),('Alexandre',3000,'') 

INSERT INTO funcionarios (nome,salario) VALUES ('Pedro',1000)

-- INSERT INTO usando SELECT
INSERT INTO #funcionarios2 (nome,salario,setor)
    SELECT nome,
           salario,
           setor
      FROM funcionarios 

-- INSERT usando SELECT INTO
SELECT nome,
       salario,
       setor
  INTO #funcionarios2
  FROM funcionarios



-- UPDATE
----------------------------------------------------

UPDATE funcionarios 
   SET salario = '1500' 
 WHERE id = 1

-- UPDATE usando FROM 
UPDATE f
   SET f.salario = '1500'
  FROM funcionarios AS f
 WHERE id = 1 

-- UPDATE Aumento de 50% sobre Salario atual.
UPDATE funcionarios 
   SET salario = salario * 1.5 
 WHERE id = 1 

-- Exemplo update com mais de um campo
UPDATE funcionarios 
   SET salario = salario * 1.5,
       setor = 'TI' 
 WHERE id <> 1 



-- DELETE
----------------------------------------------------

DELETE funcionarios 
 WHERE id = 1

-- DELETE usando FROM
DELETE
  FROM funcionarios 
 WHERE id = 1


