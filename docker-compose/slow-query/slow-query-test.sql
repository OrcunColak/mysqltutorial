-- See https://itnext.io/reviving-an-8-year-old-service-the-power-of-composite-indexing-5d5459e7baea
CREATE TABLE private_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    from_id INT,
    to_id INT,
    data TEXT,
    status ENUM('CREATED', 'SEEN', 'DELETED') NOT NULL
);

-- Create a stored procedure to populate the private_messages table
CREATE PROCEDURE populate_private_messages()
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE max_rows INT DEFAULT 10000; -- Set the number of rows you want to insert

    WHILE counter <= max_rows DO
        INSERT INTO private_messages (from_id, to_id, data, status)
        VALUES (
            ROUND(RAND() * 100),
            ROUND(RAND() * 100),
            CONCAT('Message_', FLOOR(RAND() * 10000)),
            CASE ROUND(RAND() * 2)
                WHEN 0 THEN 'CREATED'
                WHEN 1 THEN 'SEEN'
                ELSE 'DELETED'
            END
        );

        SET counter = counter + 1;
    END WHILE;
END

-- Call the stored procedure to populate the table
CALL populate_private_messages();