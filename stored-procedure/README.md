# Executing a Stored Procedure

```mysql-psql
CALL GetEmployee(1);
```

# Modifying a Stored Procedure

```mysql-psql
ALTER PROCEDURE GetEmployee(IN employeeId INT)
BEGIN
    SELECT * FROM employees WHERE emp_id = employeeId;
END;
```

# Dropping a Stored Procedure

```mysql-psql
DROP PROCEDURE IF EXISTS GetEmployee;
```