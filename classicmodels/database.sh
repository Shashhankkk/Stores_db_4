
user="root"
mysql -u "$user" -pPreethi123 <<EOF
  DROP SCHEMA IF EXISTS dwstage;
  DROP SCHEMA IF EXISTS dwprod;
  DROP SCHEMA IF EXISTS etl_metadata;
  DROP SCHEMA IF EXISTS stores;
  create database dwstage;
  create database dwprod;
  create database etl_metadata;
  create database stores;
  create database stage;
  DROP TABLE IF EXISTS stores.customers_1;
DROP TABLE IF EXISTS stores.customers_2;
DROP TABLE IF EXISTS stores.customers_3;
DROP TABLE IF EXISTS stores.customers_4;
DROP TABLE IF EXISTS stores.customers_5;
DROP TABLE IF EXISTS stage.customers;
DROP TABLE IF EXISTS stage.employees;
DROP TABLE IF EXISTS stage.offices;
DROP TABLE IF EXISTS stage.orders;
DROP TABLE IF EXISTS stage.orderdetails;
DROP TABLE IF EXISTS stage.products;
DROP TABLE IF EXISTS stage.payments;
DROP TABLE IF EXISTS stage.productlines;

CREATE TABLE stores.customers_1
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.customers_2
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.customers_3
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.customers_4
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.customers_5
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
   store_num INT,
   date DATE
);
DROP TABLE IF EXISTS stores.employees_1;
DROP TABLE IF EXISTS stores.employees_2;
DROP TABLE IF EXISTS stores.employees_3;
DROP TABLE IF EXISTS stores.employees_4;
DROP TABLE IF EXISTS stores.employees_5;

CREATE TABLE stores.employees_1
(
   employeeNumber    INT                                                     NOT NULL,
   lastName          VARCHAR(50)                                             NOT NULL,
   firstName         VARCHAR(50)                                             NOT NULL,
   extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode        VARCHAR(10)                                             NOT NULL,
   reportsTo         INT,
   jobTitle          VARCHAR(50)                                             NOT NULL,
   store_num INT,
   date DATE
);
CREATE TABLE stores.employees_2
(
   employeeNumber    INT                                                     NOT NULL,
   lastName          VARCHAR(50)                                             NOT NULL,
   firstName         VARCHAR(50)                                             NOT NULL,
   extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode        VARCHAR(10)                                             NOT NULL,
   reportsTo         INT,
   jobTitle          VARCHAR(50)                                             NOT NULL,
   store_num INT,
   date DATE
);
CREATE TABLE stores.employees_3
(
   employeeNumber    INT                                                     NOT NULL,
   lastName          VARCHAR(50)                                             NOT NULL,
   firstName         VARCHAR(50)                                             NOT NULL,
   extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode        VARCHAR(10)                                             NOT NULL,
   reportsTo         INT,
   jobTitle          VARCHAR(50)                                             NOT NULL,
   store_num INT,
   date DATE
);
CREATE TABLE stores.employees_4
(
   employeeNumber    INT                                                     NOT NULL,
   lastName          VARCHAR(50)                                             NOT NULL,
   firstName         VARCHAR(50)                                             NOT NULL,
   extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode        VARCHAR(10)                                             NOT NULL,
   reportsTo         INT,
   jobTitle          VARCHAR(50)                                             NOT NULL,
   store_num INT,
   date DATE
);
CREATE TABLE stores.employees_5
(
   employeeNumber    INT                                                     NOT NULL,
   lastName          VARCHAR(50)                                             NOT NULL,
   firstName         VARCHAR(50)                                             NOT NULL,
   extension         VARCHAR(10) CHARSET latin1 COLLATE latin1_swedish_ci    NOT NULL,
   email             VARCHAR(100) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   officeCode        VARCHAR(10)                                             NOT NULL,
   reportsTo         INT,
   jobTitle          VARCHAR(50)                                             NOT NULL,
   store_num INT,
   date DATE
);
DROP TABLE IF EXISTS stores.offices_1;
DROP TABLE IF EXISTS stores.offices_2;
DROP TABLE IF EXISTS stores.offices_3;
DROP TABLE IF EXISTS stores.offices_4;
DROP TABLE IF EXISTS stores.offices_5;

CREATE TABLE stores.offices_1
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.offices_2
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.offices_3
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.offices_4
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.offices_5
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
   store_num INT,
   date DATE
);
DROP TABLE IF EXISTS stores.productlines_1;
DROP TABLE IF EXISTS stores.productlines_2;
DROP TABLE IF EXISTS stores.productlines_3;
DROP TABLE IF EXISTS stores.productlines_4;
DROP TABLE IF EXISTS stores.productlines_5;

CREATE TABLE stores.productlines_1
(
   productLine       VARCHAR(50)     NOT NULL,
   textDescription   VARCHAR(4000),
   htmlDescription   MEDIUMTEXT,
   image             MEDIUMBLOB,
   store_num INT,
   date DATE
);
CREATE TABLE stores.productlines_2
(
   productLine       VARCHAR(50)     NOT NULL,
   textDescription   VARCHAR(4000),
   htmlDescription   MEDIUMTEXT,
   image             MEDIUMBLOB,
   store_num INT,
   date DATE
);
CREATE TABLE stores.productlines_3
(
   productLine       VARCHAR(50)     NOT NULL,
   textDescription   VARCHAR(4000),
   htmlDescription   MEDIUMTEXT,
   image             MEDIUMBLOB,
   store_num INT,
   date DATE
);
CREATE TABLE stores.productlines_4
(
   productLine       VARCHAR(50)     NOT NULL,
   textDescription   VARCHAR(4000),
   htmlDescription   MEDIUMTEXT,
   image             MEDIUMBLOB,
   store_num INT,
   date DATE
);
CREATE TABLE stores.productlines_5
(
   productLine       VARCHAR(50)     NOT NULL,
   textDescription   VARCHAR(4000),
   htmlDescription   MEDIUMTEXT,
   image             MEDIUMBLOB,
   store_num INT,
   date DATE
);
DROP TABLE IF EXISTS stores.products_1;
DROP TABLE IF EXISTS stores.products_2;
DROP TABLE IF EXISTS stores.products_3;
DROP TABLE IF EXISTS stores.products_4;
DROP TABLE IF EXISTS stores.products_5;

CREATE TABLE stores.products_1
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.products_2
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.products_3
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.products_4
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
   store_num INT,
   date DATE
);
CREATE TABLE stores.products_5
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
   store_num INT,
   date DATE
);
DROP TABLE IF EXISTS stores.orderdetails_1;
DROP TABLE IF EXISTS stores.orderdetails_2;
DROP TABLE IF EXISTS stores.orderdetails_3;
DROP TABLE IF EXISTS stores.orderdetails_4;
DROP TABLE IF EXISTS stores.orderdetails_5;

CREATE TABLE stores.orderdetails_1
(
   orderNumber       INT                                                      NOT NULL,
   productCode       VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci   NOT NULL,
   quantityOrdered       INT                                                      NOT NULL,
   priceEach             DECIMAL(10,2)                                            NOT NULL,
   store_num             INT,
   date                  DATE
);
CREATE TABLE stores.orderdetails_2
(
   orderNumber       INT                                                      NOT NULL,
   productCode       VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci   NOT NULL,
   quantityOrdered       INT                                                      NOT NULL,
   priceEach             DECIMAL(10,2)                                            NOT NULL,
   store_num             INT,
   date                  DATE
);
CREATE TABLE stores.orderdetails_3
(
   orderNumber       INT                                                      NOT NULL,
   productCode       VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci   NOT NULL,
   quantityOrdered       INT                                                      NOT NULL,
   priceEach             DECIMAL(10,2)                                            NOT NULL,
   store_num             INT,
   date                  DATE
);
CREATE TABLE stores.orderdetails_4
(
   orderNumber       INT                                                      NOT NULL,
   productCode       VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci   NOT NULL,
   quantityOrdered       INT                                                      NOT NULL,
   priceEach             DECIMAL(10,2)                                            NOT NULL,
   store_num             INT,
   date                  DATE
);
CREATE TABLE stores.orderdetails_5
(
   orderNumber       INT                                                      NOT NULL,
   productCode       VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci   NOT NULL,
   quantityOrdered       INT                                                      NOT NULL,
   priceEach             DECIMAL(10,2)                                            NOT NULL,
   store_num             INT,
   date                  DATE
);

DROP TABLE IF EXISTS stores.orders_1;
DROP TABLE IF EXISTS stores.orders_2;
DROP TABLE IF EXISTS stores.orders_3;
DROP TABLE IF EXISTS stores.orders_4;
DROP TABLE IF EXISTS stores.orders_5;

CREATE TABLE stores.orders_1
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
   store_num           INT,
   date                DATE,
   cancelledDate       DATE   NOT NULL
)
ENGINE=InnoDB;
CREATE TABLE stores.orders_2
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
   store_num           INT,
   date                DATE,
   cancelledDate DATE NOT NULL
)
ENGINE=InnoDB;
CREATE TABLE stores.orders_3
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
   store_num           INT,
   date                DATE,
   cancelledDate DATE NOT NULL
)
ENGINE=InnoDB;
CREATE TABLE stores.orders_4
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
   store_num           INT,
   date                DATE,
cancelledDate     DATE NOT NULL
)
ENGINE=InnoDB;
CREATE TABLE stores.orders_5
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
   store_num           INT,
   date                DATE
,cancelledDate DATE NOT NULL)
ENGINE=InnoDB;


DROP TABLE IF EXISTS stores.payments_1;
DROP TABLE IF EXISTS stores.payments_2;
DROP TABLE IF EXISTS stores.payments_3;
DROP TABLE IF EXISTS stores.payments_4;
DROP TABLE IF EXISTS stores.payments_5;

CREATE TABLE stores.payments_1
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   store_num           INT,
   date                DATE
)
ENGINE=InnoDB;
CREATE TABLE stores.payments_2
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   store_num           INT,
   date                DATE
)
ENGINE=InnoDB;
CREATE TABLE stores.payments_3
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   store_num           INT,
   date                DATE
)
ENGINE=InnoDB;
CREATE TABLE stores.payments_4
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   store_num           INT,
   date                DATE
)
ENGINE=InnoDB;
CREATE TABLE stores.payments_5
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   store_num           INT,
   date                DATE
)
ENGINE=InnoDB;



DROP TABLE IF EXISTS etl_metadata.batch_control;

CREATE TABLE etl_metadata.batch_control
(
   etl_batch_no    INT,
   etl_batch_date  DATE
);
insert into etl_metadata.batch_control values(1001,'2001-01-01');
 

DROP TABLE IF EXISTS dwprod.temp;

CREATE TABLE dwprod.temp
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
   store_num INT,date DATE,
   PRIMARY KEY (dw_employee_id)
);

DROP TABLE IF EXISTS dwprod.customers;

CREATE TABLE dwprod.customers
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
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no            INT,
   PRIMARY KEY (dw_customer_id)
);
DROP TABLE IF EXISTS dwprod.employees;

CREATE TABLE dwprod.employees
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
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no              INT,
   PRIMARY KEY (dw_employee_id)
);

DROP TABLE IF EXISTS dwprod.offices;

CREATE TABLE dwprod.offices
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
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no          INT,
   PRIMARY KEY (dw_office_id)
);

DROP TABLE IF EXISTS dwprod.orderdetails;

CREATE TABLE dwprod.orderdetails
(
   dw_orderdetail_id     INT             NOT NULL AUTO_INCREMENT,
   dw_order_id           INT,
   dw_product_id         INT,
   src_orderNumber       INT             NOT NULL,
   src_productCode       VARCHAR(15)     NOT NULL,
   quantityOrdered       INT             NOT NULL,
   priceEach             DECIMAL(10,2)   NOT NULL,
   orderLineNumber       SMALLINT        NOT NULL,
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no          INT,
   PRIMARY KEY (dw_orderdetail_id)
);


DROP TABLE IF EXISTS dwprod.orders;

CREATE TABLE dwprod.orders
(
   dw_order_id           INT                                                    NOT NULL AUTO_INCREMENT,
   dw_customer_id        INT,
   src_orderNumber       INT                                                    NOT NULL,
   orderDate             DATE                                                   NOT NULL,
   requiredDate          DATE                                                   NOT NULL,
   shippedDate           DATE,
   status                VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments              TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   src_customerNumber    INT                                                    NOT NULL,
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no          INT,
   cancelledDate         DATE NOT NULL,
   PRIMARY KEY (dw_order_id)
);

DROP TABLE IF EXISTS dwprod.payments;

CREATE TABLE dwprod.payments
(
   dw_payment_id         INT             NOT NULL AUTO_INCREMENT,
   dw_customer_id        INT,
   src_customerNumber    INT             NOT NULL,
   checkNumber           VARCHAR(50)     NOT NULL,
   paymentDate           DATE            NOT NULL,
   amount                DECIMAL(10,2)   NOT NULL,
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no          INT,
   PRIMARY KEY (dw_payment_id)
);

DROP TABLE IF EXISTS dwprod.productlines;

CREATE TABLE dwprod.productlines
(
   dw_product_line_id    INT             NOT NULL AUTO_INCREMENT,
   productLine           VARCHAR(50)     NOT NULL,
   textDescription       VARCHAR(4000),
   htmlDescription       MEDIUMTEXT,
   image                 MEDIUMBLOB,
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no          INT,
   PRIMARY KEY (dw_product_line_id)
);

DROP TABLE IF EXISTS dwprod.products;

CREATE TABLE dwprod.products
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
   store_num INT,date DATE,updated_date DATE,
   etl_batch_no          INT ,
   PRIMARY KEY (dw_product_id)
);

CREATE TABLE stage.customers(
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
   store_num INT,
   date DATE
);
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
   store_num INT,
   date DATE
);
CREATE TABLE stage.productlines
(
   productLine       VARCHAR(50)     NOT NULL,
   textDescription   VARCHAR(4000),
   htmlDescription   MEDIUMTEXT,
   image             MEDIUMBLOB,
   store_num INT,
   date DATE
);
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
   store_num INT,
   date DATE
);
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
   store_num INT,
   date DATE
);
CREATE TABLE stage.orderdetails
(
   orderNumber       INT                                                      NOT NULL,
   productCode       VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci   NOT NULL,
   quantityOrdered       INT                                                      NOT NULL,
   priceEach             DECIMAL(10,2)                                            NOT NULL,
   store_num             INT,
   date                  DATE
);
CREATE TABLE stage.orders
(
   orderNumber     INT                                                    NOT NULL,
   orderDate           DATE                                                   NOT NULL,
   requiredDate        DATE                                                   NOT NULL,
   shippedDate         DATE,
   status              VARCHAR(15) CHARSET latin1 COLLATE latin1_swedish_ci   NOT NULL,
   comments            TEXT CHARSET latin1 COLLATE latin1_swedish_ci,
   customerNumber  INT                                                    NOT NULL,
   store_num           INT,
   date                DATE,
   cancelledDate       DATE   NOT NULL
)
ENGINE=InnoDB;
CREATE TABLE stage.payments
(
   customerNumber  INT             NOT NULL,
   checkNumber         VARCHAR(50)     NOT NULL,
   paymentDate         DATE            NOT NULL,
   amount              DECIMAL(10,2)   NOT NULL,
   store_num           INT,
   date                DATE
)
ENGINE=InnoDB;

EOF
