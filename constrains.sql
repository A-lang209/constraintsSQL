CREATE TABLE sales(
    purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

CREATE TABLE customers(
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender char,
    email_address VARCHAR(255),
    number_of_complaint INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers ADD UNIQUE KEY (email_address);
ALTER TABLE customers CHANGE COLUMN number_of_complaint number_of_complaints INT DEFAULT 0;

INSERT INTO 
customers(customer_id, first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('01120', 'Peter', 'Fiagro', 'M', 'sadasdasdqw@fsssfdsda.com', '5');
SELECT * FROM customers;

CREATE TABLE companies
(
    company_id INT AUTO_INCREMENT,
    head_quarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
PRIMARY KEY(company_id)
);

ALTER TABLE companies MODIFY company_name VARCHAR(255) NULL;
ALTER TABLE companies CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;
INSERT INTO companies (head_quarters_phone_number, company_name) VALUES ('+1 (202) 555-15165', 'zoze');
SELECT * FROM companies;
