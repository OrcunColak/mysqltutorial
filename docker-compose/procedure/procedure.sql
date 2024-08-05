-- Execute each step individually
CREATE TABLE IF NOT EXISTS db.t_Portfolio (PortfolioID INT NOT NULL, PortfolioCode VARCHAR(45));

-- Create a stored procedure to populate the private_messages table
CREATE PROCEDURE populate_t_Portfolio()
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE max_rows INT DEFAULT 5000; -- Set the number of rows you want to insert

    WHILE counter <= max_rows DO
        INSERT INTO t_Portfolio (PortfolioID, PortfolioCode)
        VALUES (
                    counter, CONCAT('', counter)
                );

        SET counter = counter + 1;
    END WHILE;
END

-- Call the stored procedure to populate the table
CALL populate_t_Portfolio();