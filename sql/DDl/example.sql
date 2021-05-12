create table customer(customer_id int PRIMARY KEY AUTO_INCREMENT,name varchar(20),email varchar(25) NOT NULL,age int);

create table product(product_id int PRIMARY KEY AUTO_INCREMENT,name varchar(20));

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  fk_customer_id INT NOT NULL,
fk_product_id INT NOT NULL,
  date_placed DATE NOT NULL,
  FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
 FOREIGN KEY (fk_product_id) REFERENCES product(product_id)
  );
