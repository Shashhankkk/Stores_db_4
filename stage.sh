mysql -u root -pPreethi123 2>/dev/null<< eof
DROP SCHEMA IF EXISTS stage;

create database stage;

DROP TABLE IF EXISTS stage.customers;
CREATE TABLE stage.customers
(
   customerNumber          INT                                                    NOT NULL,
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
store_num INT ,
 create_ts TIMESTAMP ,
 update_ts TIMESTAMP
 );

 DROP TABLE IF EXISTS stage.payments;

CREATE TABLE stage.payments
(
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATETIME            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   customerNumber  INT             NOT NULL,
   store_num INT NULL,
 create_ts TIMESTAMP NULL,
 update_ts TIMESTAMP NULL
 );

 DROP TABLE IF EXISTS stage.orders;

CREATE TABLE stage.orders
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATETIME                                                   NOT NULL,
   requiredDate        DATETIME                                                   NOT NULL,
   shippedDate         DATETIME,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
store_num INT NULL,
 create_ts TIMESTAMP NULL,
 update_ts TIMESTAMP NULL
 );

 DROP TABLE IF EXISTS stage.offices;

 CREATE TABLE stage.offices
 (
 officeCode        VARCHAR(10)                                            NOT NULL,
 city              VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
 phone             VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
 addressLine1      VARCHAR(50)                                            NOT NULL,
 addressLine2      VARCHAR(50),
 state             VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci,
 country           VARCHAR(50) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
 postalCode        VARCHAR(15)                                            NOT NULL,
 territory         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
store_num INT NULL,
 create_ts TIMESTAMP NULL,
 update_ts TIMESTAMP NULL
 );

 DROP TABLE IF EXISTS stage.employees;

 CREATE TABLE stage.employees
 (
    employeeNumber    INT                                                     NOT NULL,
    lastName          VARCHAR(50)                                             NOT NULL,
    firstName         VARCHAR(50)                                             NOT NULL,
    extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
    email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
    reportsTo         INT,
    jobTitle          VARCHAR(50)                                             NOT NULL,
    officeCode        VARCHAR(10)                                             NOT NULL,
store_num INT,
 create_ts TIMESTAMP ,
 update_ts TIMESTAMP
 );

 DROP TABLE IF EXISTS stage.productlines;

 CREATE TABLE stage.productlines
 (
    productLine       VARCHAR(50)     NOT NULL,
    textDescription   VARCHAR(4000),
    htmlDescription   MEDIUMTEXT,
    image             MEDIUMBLOB,
store_num INT NULL,
 create_ts TIMESTAMP NULL,
 update_ts TIMESTAMP NULL
 );

  DROP TABLE IF EXISTS stage.products;

 CREATE TABLE stage.products
 (
    productCode         VARCHAR(15)     NOT NULL,
    productName         VARCHAR(70)     NOT NULL,
    productScale        VARCHAR(10)     NOT NULL,
    productVendor       VARCHAR(50)     NOT NULL,
    productDescription  TEXT            NOT NULL,
    quantityInStock     SMALLINT        NOT NULL,
    buyPrice            DECIMAL(10,2)   NOT NULL,
    MSRP                DECIMAL(10,2)   NOT NULL,
productLine         VARCHAR(50)     NOT NULL,
store_num INT NULL,
 create_ts TIMESTAMP NULL,
 update_ts TIMESTAMP NULL
 );

 DROP TABLE IF EXISTS stage.orderdetails;

 CREATE TABLE stage.orderdetails
(
 orderNumber    INT             NOT NULL,
 productCode    VARCHAR(15)     NOT NULL,
 quantityOrdered    INT             NOT NULL,
 priceEach          DECIMAL(10,2)   NOT NULL,
 store_num INT NULL,
 create_ts TIMESTAMP NULL,
 update_ts TIMESTAMP NULL
 );

commit;
eof


