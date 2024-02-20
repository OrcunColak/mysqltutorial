-- Create Employee Table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    salary DECIMAL(10, 2)
);

-- Set up replication connection details
CHANGE REPLICATION SOURCE TO
  SOURCE_HOST='mysql-master',
  SOURCE_USER='repl',
  SOURCE_PASSWORD='replication_password',
  SOURCE_AUTO_POSITION=1 FOR CHANNEL 'master';

-- Start replication
START REPLICA;
SHOW REPLICA STATUS\G;