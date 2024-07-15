-- 과제1 MySQL 사용자 생성 및 권한 부여

-- 터미널에서 하다 넘어옴

GRANT ALL PRivileges on *.* to 'fishbread_user'@'localhost';
FLUSH PRIVILEGES;

SHOW GRANTS for 'fishbread_user'@'localhost';

-- 과제2 데이터베이스와 테이블 생성ALTER

CREATE DATABASE fishbread_db;
USE fishbread_db;

CREATE TABLE users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,	-- id
	name VARCHAR(255) NOT NULL, 			-- 사용자 이름
	age INT NOT NULL,						-- 사용자 나이
	email VARCHAR(100) UNIQUE,				-- 사용자 이메일
	is_business BOOLEAN default false
);

-- drop table users;

CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,	-- 주문의 고유 ID
	user_id INT,					-- 주문한 사용자의 ID (users 테이블의 user_id와 참조 관계)
	order_date DATE,				-- 주문 날짜
	amount DECIMAL(10, 2), 			-- 주문 금액
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);


CREATE TABLE inventory(
	item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE sales(
	sale_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity_sold INT NOT NULL,    
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES inventory(item_id)
);

CREATE TABLE daily_sales(
	date DATE PRIMARY KEY,
    total_sales DECIMAL(10,2) NOT NULL
);


SELECT * FROM users;





