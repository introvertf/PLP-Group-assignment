-- Constraints for the bookstore database

-- Primary Keys
ALTER TABLE book ADD CONSTRAINT pk_book PRIMARY KEY (book_id);
ALTER TABLE author ADD CONSTRAINT pk_author PRIMARY KEY (author_id);
ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (customer_id);
ALTER TABLE publisher ADD CONSTRAINT pk_publisher PRIMARY KEY (publisher_id);
ALTER TABLE address ADD CONSTRAINT pk_address PRIMARY KEY (address_id);
ALTER TABLE country ADD CONSTRAINT pk_country PRIMARY KEY (country_id);
ALTER TABLE cust_order ADD CONSTRAINT pk_order PRIMARY KEY (order_id);
ALTER TABLE order_line ADD CONSTRAINT pk_order_line PRIMARY KEY (order_line_id);
ALTER TABLE order_history ADD CONSTRAINT pk_order_history PRIMARY KEY (history_id);
ALTER TABLE address_status ADD CONSTRAINT pk_address_status PRIMARY KEY (status_id);
ALTER TABLE book_language ADD CONSTRAINT pk_book_language PRIMARY KEY (language_id);
ALTER TABLE book_author ADD CONSTRAINT pk_book_author PRIMARY KEY (book_author_id);

-- Foreign Keys
ALTER TABLE book_author ADD CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES book(book_id);
ALTER TABLE book_author ADD CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES author(author_id);
ALTER TABLE customer_address ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
ALTER TABLE address ADD CONSTRAINT fk_address_status FOREIGN KEY (status_id) REFERENCES address_status(status_id);
ALTER TABLE cust_order ADD CONSTRAINT fk_customer_order FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
ALTER TABLE order_line ADD CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES cust_order(order_id);
ALTER TABLE order_line ADD CONSTRAINT fk_book_order_line FOREIGN KEY (book_id) REFERENCES book(book_id);
ALTER TABLE order_history ADD CONSTRAINT fk_order_history FOREIGN KEY (order_id) REFERENCES cust_order(order_id);