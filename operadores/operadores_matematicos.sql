--Operador +  
SELECT 1 + 3 
  
--Operador *  
SELECT 3 * 2

--Operador -  
SELECT 5 - 2
   
--Operador /  
SELECT 15 / 3
  
--Operador %  
SELECT 12 % 5

--
select ((1+4)*(3*3))/5

/*
Usando o operador de adicao para calcular o numero total de 
horas de ausencia do trabalho para cada funcionario.
*/
USE AdventureWorks2014

SELECT p.firstname,              
	   p.lastname,              
	   e.vacationhours,              
	   e.sickleavehours,              
	   e.vacationhours + e.sickleavehours AS 'Horas Ausente'  
  FROM humanresources.employee AS e         
	   JOIN person.person AS p           
	     ON e.businessentityid = p.businessentityid  
 ORDER BY 'Horas Ausente' ASC; 




--Usando subtracao em uma instrucao SELECT
SELECT Max(taxrate) maximo,Min(taxrate) minimo,
	   Max(taxrate) - Min(taxrate) AS 'Tax Rate Difference'  
  FROM sales.salestaxrate  
 WHERE stateprovinceid IS NOT NULL; 

/*
O exemplo a seguir recupera o numero de identificao do produto, 
o nome, o preco de tabela e o novo preco de tabela de 
todas as bicicletas mountain bike na tabela Product. 
O novo preco de tabela e calculado usando o operador aritmetico * 
para multiplicar ListPrice por 1.15.
*/

	SELECT productid,         
		   [name],         
		   listprice,         
		   listprice * 1.15 AS Novo_preco  
	  FROM production.product  
	 WHERE [name] LIKE 'Mountain-%'  
	 ORDER BY productid ASC; 


/*
O exemplo a seguir usa o operador aritmetico de divisao para 
calcular a meta de vendas mensal da equipe de vendas em Ciclos de 12 meses
*/

	SELECT s.businessentityid AS SalesPersonID,         
		   firstname,         
		   lastname,         
		   salesquota,         
		   salesquota / 12 AS 'Meta Mensal'  
	  FROM sales.salesperson AS s         
		   JOIN humanresources.employee AS e           
		     ON s.businessentityid = e.businessentityid         
		   JOIN person.person AS p           
		     ON e.businessentityid = p.businessentityid;


/*
O exemplo a seguir divide o numero 38 por 5. 
Isto resulta em 7 como a parte inteira do resultado 
e demonstra como o modulo retorna o resto de 3.
*/

	SELECT 38 / 5 AS Inteiro,         
	       38 % 5 AS Restante


		   
