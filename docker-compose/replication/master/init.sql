-- Create a user for replication
CREATE USER 'repl'@'%' IDENTIFIED WITH mysql_native_password BY 'replication_password';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';

FLUSH PRIVILEGES;

-- Create Employee Table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    salary DECIMAL(10, 2)
);

-- Insert Sample Data
INSERT INTO employees (id, name, position, salary)
VALUES
    (1, 'John Doe', 'Software Developer', 75000.00),
    (2, 'Jane Smith', 'Project Manager', 90000.00),
    (3, 'Bob Johnson', 'QA Engineer', 65000.00);
