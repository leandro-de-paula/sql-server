# SQL Instructions

SQL (Structured Query Language) is a structured query language used to interact with relational databases. It provides various instructions to perform different operations on the database. The main categories of SQL instructions are:

# Explaining the main SQL instructions: DML, DDL, DCL, and TCL:

## DML (Data Manipulation Language)

DML instructions are used to manipulate data within database tables. They allow you to perform operations such as inserting, updating, deleting, and selecting records.

### Examples of DML Instructions:

1. **INSERT**: Inserts new records into a table.

   Example:
   ```sql
   INSERT INTO table (column1, column2, column3) VALUES (value1, value2, value3);
   ```

2. **UPDATE**: Updates the values of one or more records in a table.

   Example:
   ```sql
   UPDATE table SET column1 = new_value WHERE condition;
   ```

3. **DELETE**: Deletes records from a table based on a condition.

   Example:
   ```sql
   DELETE FROM table WHERE condition;
   ```
4. **SELECT**: Retrieves records from one or more tables based on a condition.

   Example:
   ```sql
   SELECT column1, column2 FROM table WHERE condition;
   ```
   See more DML examples: [Click Here](dml.sql)

### DDL (Data Definition Language)
DDL instructions are used to define and manage the structure of the database. They allow you to create, alter, and delete database objects such as tables, indexes, and constraints.

### Examples of DDL Instructions:
1. **CREATE**: CREATE: Creates new objects in the database, such as tables and indexes.

   Example:
   ```sql
   CREATE TABLE table (
       column1 data_type,
       column2 data_type,
       ...
   );
   ```
2. **ALTER**: Alters the structure of existing objects in the database.

   Example:
   ```sql
   ALTER TABLE table ADD column data_type;
   ```

3. **DROP**: Deletes objects from the database, such as tables and indexes.

   Example:
   ```sql
   DROP TABLE table;
   ```

## DCL (Data Control Language)
DCL instructions are used to control access permissions and database security. They allow you to grant or revoke access privileges to users.

### Examples of DCL Instructions:
1. **GRANT**: Grants access privileges to a user or group of users.

   Example:
   ```sql
   GRANT SELECT, INSERT ON table TO user;
   ```
   See more examples: [Click Here](dcl_grant.sql)

2. **REVOKE**: Revokes previously granted access privileges from a user.

   Example:
   ```sql
   REVOKE INSERT ON table FROM user;
   ```
## TCL (Transaction Control Language)
TCL instructions are used to control transactions in the database. They allow you to manage the beginning, end, and rollback (undo) of transactions.

### Examples of TCL Instructions:
1. **COMMIT**: Confirms all changes made within a transaction.

   Example:
   ```sql
   COMMIT;
   ```

2. **ROLLBACK**: Undoes all changes made within a transaction.
   Example:
   ```sql
   ROLLBACK;
   ```

3. **SAVEPOINT**:  Defines a savepoint within a transaction to roll back to that point.

   Example:
   ```sql
   SAVEPOINT point;
   ```

4. **SET TRANSACTION**:Sets transaction control options, such as isolation and commit mode.

   Example:
   ```sql
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
   ```
These are some of the main SQL instructions you will use to interact with relational databases. With these instructions, you can perform data manipulation, structure definition, access control, and transaction management operations in your SQL Server database.