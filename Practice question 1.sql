use yuvraj;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(255),
    mode_of_payment VARCHAR(50),
    city VARCHAR(100)
);
INSERT INTO customers (customer_id, customer, mode_of_payment, city)
VALUES 
(1, 'John Doe', 'Credit Card', 'New York'),
(2, 'Jane Smith', 'Debit Card', 'Los Angeles'),
(3, 'Mike Johnson', 'Cash', 'Chicago'),
(4, 'Emily Davis', 'Credit Card', 'Houston'),
(5, 'Chris Brown', 'PayPal', 'Phoenix'),
(6, 'Anna Wilson', 'Debit Card', 'Philadelphia'),
(7, 'Tom Hanks', 'Cash', 'San Antonio'),
(8, 'Sophia Lee', 'Credit Card', 'San Diego'),
(9, 'David Miller', 'PayPal', 'Dallas'),
(10, 'Laura Garcia', 'Credit Card', 'Austin');

select * from customers;

 select city, max(customer) from customers 
 group by city
 having max(customer);

UPDATE 












