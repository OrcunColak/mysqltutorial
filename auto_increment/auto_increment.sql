-- See https://kyle-evans.medium.com/designing-an-order-number-generation-system-in-spring-boot-4b05ee7916b4
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
    order_data TEXT,
    PRIMARY KEY (order_id)
);