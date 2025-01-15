#오토 인크리먼트, 자동증가
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY 
,uesrname VARCHAR(50) NOT NULL
,email VARCHAR (100) NOT null
,create_at DATETIME NOW()
);

SELECT * FROM USERS;
DESC USERS;

#오토 인크리먼트, 자동증가
CREATE TABLE users (
product_id INT AUTO_INCREMENT PRIMARY KEY 
,product_name VARCHAR(50) NOT NULL
,price DECIMAL (10,2) NOT NULL
,stock INT NOT NULL
,category ENUM('Electronics, 'Clothing', 'Food', 'Books') not null
);

select * from products;
desc products