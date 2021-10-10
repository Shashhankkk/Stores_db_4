
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
   creditLimit             DECIMAL(10,2)
 );

 DROP TABLE IF EXISTS stage.payments;

CREATE TABLE stage.payments
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL
 );

 DROP TABLE IF EXISTS stage.orders;

CREATE TABLE stage.orders
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL
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
 );

 DROP TABLE IF EXISTS stage.employees;

 CREATE TABLE stage.employees
 (
    employeeNumber    INT                                                     NOT NULL,
    lastName          VARCHAR(50)                                             NOT NULL,
    firstName         VARCHAR(50)                                             NOT NULL,
    extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
    email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
    officeCode        VARCHAR(10)                                             NOT NULL,
    reportsTo         INT,
    jobTitle          VARCHAR(50)                                             NOT NULL,
 );

 DROP TABLE IF EXISTS stage.productlines;

 CREATE TABLE stage.productlines
 (
    productLine       VARCHAR(50)     NOT NULL,
    textDescription   VARCHAR(4000),
    htmlDescription   MEDIUMTEXT,
    image             MEDIUMBLOB
 );

  DROP TABLE IF EXISTS stage.products;

 CREATE TABLE stage.products
 (
    productCode         VARCHAR(15)     NOT NULL,
    productName         VARCHAR(70)     NOT NULL,
    productLine         VARCHAR(50)     NOT NULL,
    productScale        VARCHAR(10)     NOT NULL,
    productVendor       VARCHAR(50)     NOT NULL,
    productDescription  TEXT            NOT NULL,
    quantityInStock     SMALLINT        NOT NULL,
    buyPrice            DECIMAL(10,2)   NOT NULL,
    MSRP                DECIMAL(10,2)   NOT NULL,
 );

 DROP TABLE IF EXISTS stage.orderdetails;

 CREATE TABLE stage.orderdetails
(
 orderNumber    INT             NOT NUL,
 src_productCode    VARCHAR(15)     NOT NULL,
 quantityOrdered    INT             NOT NULL,
 priceEach          DECIMAL(10,2)   NOT NULL,
 orderLineNumber    SMALLINT        NOT NULL,
 );



