mysql -u root -pPreethi123 2>/dev/null<< eof

DROP SCHEMA IF EXISTS dw_prod;
create database dw_prod;
DROP TABLE IF EXISTS dw_prod.temp;

CREATE TABLE dw_prod.temp
(
   dw_employee_id    INT                                                     NOT NULL AUTO_INCREMENT,
   employeeNumber    INT                                                     NOT NULL,
   lastName          VARCHAR(50)                                             NOT NULL,
   firstName         VARCHAR(50)                                             NOT NULL,
   extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode        VARCHAR(10)                                             NOT NULL,
   reportsTo         INT,
   jobTitle          VARCHAR(50)                                             NOT NULL,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_employee_id)
);

DROP TABLE IF EXISTS dw_prod.customers;

CREATE TABLE dw_prod.customers
(
   dw_customer_id          INT                                                    NOT NULL AUTO_INCREMENT,
   src_customerNumber      INT                                                    NOT NULL,
   customerName            VARCHAR(50)                                            NOT NULL,
   contactLastName         VARCHAR(50)                                            NOT NULL,
   contactFirstName        VARCHAR(50)                                            NOT NULL,
   phone                   VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   addressLine1            VARCHAR(50)                                            NOT NULL,
   addressLine2            VARCHAR(50),
   city                    VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   state                   VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci,
   postalCode              VARCHAR(15),
   country                 VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   salesRepEmployeeNumber  INT,
   creditLimit             DECIMAL(10,2),
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_customer_id)
);

DROP TABLE IF EXISTS dw_prod.employees;

CREATE TABLE dw_prod.employees
(
   dw_employee_id            INT                                                     NOT NULL AUTO_INCREMENT,
   employeeNumber            INT                                                     NOT NULL,
   lastName                  VARCHAR(50)                                             NOT NULL,
   firstName                 VARCHAR(50)                                             NOT NULL,
   extension                 VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email                     VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode                VARCHAR(10)                                             NOT NULL,
   reportsTo                 INT,
   jobTitle                  VARCHAR(50)                                             NOT NULL,
   dw_office_id              INT,
   dw_reporting_employee_id  INT,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_employee_id)
);

DROP TABLE IF EXISTS dw_prod.offices;

CREATE TABLE dw_prod.offices
(
   dw_office_id          INT                                                    NOT NULL AUTO_INCREMENT,
   officeCode            VARCHAR(10)                                            NOT NULL,
   city                  VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   phone                 VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   addressLine1          VARCHAR(50)                                            NOT NULL,
   addressLine2          VARCHAR(50),
   state                 VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci,
   country               VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   postalCode            VARCHAR(15)                                            NOT NULL,
   territory             VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_office_id)
);

DROP TABLE IF EXISTS dw_prod.orderdetails;

CREATE TABLE dw_prod.orderdetails
(
   dw_orderdetail_id     INT             NOT NULL AUTO_INCREMENT,
   dw_order_id           INT,
   dw_product_id         INT,
   src_orderNumber       INT             NOT NULL,
   src_productCode       VARCHAR(15)     NOT NULL,
   quantityOrdered       INT             NOT NULL,
   priceEach             DECIMAL(10,2)   NOT NULL,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_orderdetail_id)
);

DROP TABLE IF EXISTS dw_prod.orders;

CREATE TABLE dw_prod.orders
(
   dw_order_id          INT                                                    NOT NULL AUTO_INCREMENT,
   dw_customer_id        INT,
   src_orderNumber       INT                                                    NOT NULL,
   orderDate             DATETIME                                                   NOT NULL,
   requiredDate          DATETIME                                                   NOT NULL,
   shippedDate           DATETIME,
   status                VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments              TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   src_customerNumber    INT                                                    NOT NULL,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_order_id)
);

DROP TABLE IF EXISTS dw_prod.payments;

CREATE TABLE dw_prod.payments
(
   dw_payment_id         INT             NOT NULL AUTO_INCREMENT,
   dw_customer_id        INT,
   src_customerNumber    INT             NOT NULL,
   checkNumber           VARCHAR(50)     NOT NULL,
   paymentDate           DATETIME            NOT NULL,
   amount                DECIMAL(10,2)   NOT NULL,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_payment_id)
);

DROP TABLE IF EXISTS dw_prod.productlines;

CREATE TABLE dw_prod.productlines
(
   dw_product_line_id    INT             NOT NULL AUTO_INCREMENT,
   productLine           VARCHAR(50)     NOT NULL,
   textDescription       VARCHAR(4000),
   htmlDescription       MEDIUMTEXT,
   image                 MEDIUMBLOB,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_product_line_id)
);

DROP TABLE IF EXISTS dw_prod.products;

CREATE TABLE dw_prod.products
(
   dw_product_id         INT             NOT NULL AUTO_INCREMENT,
   src_productCode       VARCHAR(15)     NOT NULL,
   productName           VARCHAR(70)     NOT NULL,
   productLine           VARCHAR(50)     NOT NULL,
   productScale          VARCHAR(10)     NOT NULL,
   productVendor         VARCHAR(50)     NOT NULL,
   productDescription    TEXT            NOT NULL,
   quantityInStock       SMALLINT        NOT NULL,
   buyPrice              DECIMAL(10,2)   NOT NULL,
   MSRP                  DECIMAL(10,2)   NOT NULL,
   dw_product_line_id    INT,
   store_num INT,
   create_ts TIMESTAMP,
   update_ts TIMESTAMP,
   PRIMARY KEY (dw_product_id)
);
commit;

eof
