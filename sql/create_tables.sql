-- Creation of sale_store_1 table
CREATE TABLE IF NOT EXISTS sales_store_1 (
  sale_id varchar(200) NOT NULL,
  name varchar(250) NOT NULL,
  amount DECIMAL(20,3) NOT NULL,
  date_sale TIMESTAMP,
  PRIMARY KEY (sale_id)
);

-- Creation of sale_store_2 table
CREATE TABLE IF NOT EXISTS sales_store_2 (
  sale_id varchar(200) NOT NULL,
  name varchar(250) NOT NULL,
  amount DECIMAL(20,3) NOT NULL,
  date_sale TIMESTAMP,
  PRIMARY KEY (sale_id)
);

-- Creation of sale_store_3 table
CREATE TABLE IF NOT EXISTS sales_store_3 (
  sale_id varchar(200) NOT NULL,
  name varchar(250) NOT NULL,
  amount DECIMAL(20,3) NOT NULL,
  date_sale TIMESTAMP,
  PRIMARY KEY (sale_id)
);

