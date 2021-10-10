mysql -u root -pPreethi123 << hi

UPDATE dwprod.customers prod
JOIN stores.customers_1 stores ON prod.src_customerNumber = stores.customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.customerName = stores.customerName,
       prod.contactLastName = stores.contactLastName,
       prod.contactFirstName = stores.contactFirstName,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.city = stores.city,
       prod.state = stores.state,
       prod.postalCode = stores.postalCode,
       prod.country = stores.country,
       prod.salesRepEmployeeNumber = stores.salesRepEmployeeNumber,
       prod.creditLimit = stores.creditLimit,
       prod.store_num = stores.store_num,
       prod.updated_date= etl.etl_batch_date,
       prod.etl_batch_no= etl.etl_batch_no;

UPDATE dwprod.customers prod
JOIN stores.customers_2 stores ON prod.src_customerNumber = stores.customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.customerName = stores.customerName,
       prod.contactLastName = stores.contactLastName,
       prod.contactFirstName = stores.contactFirstName,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.city = stores.city,
       prod.state = stores.state,
       prod.postalCode = stores.postalCode,
       prod.country = stores.country,
       prod.salesRepEmployeeNumber = stores.salesRepEmployeeNumber,
       prod.creditLimit = stores.creditLimit,
       prod.store_num = stores.store_num,
       prod.updated_date= etl.etl_batch_date,
       prod.etl_batch_no= etl.etl_batch_no;

UPDATE dwprod.customers prod
JOIN stores.customers_3 stores ON prod.src_customerNumber = stores.customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.customerName = stores.customerName,
       prod.contactLastName = stores.contactLastName,
       prod.contactFirstName = stores.contactFirstName,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.city = stores.city,
       prod.state = stores.state,
       prod.postalCode = stores.postalCode,
       prod.country = stores.country,
       prod.salesRepEmployeeNumber = stores.salesRepEmployeeNumber,
       prod.creditLimit = stores.creditLimit,
       prod.store_num = stores.store_num,
       prod.updated_date= etl.etl_batch_date,
       prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.customers prod
JOIN stores.customers_4 stores ON prod.src_customerNumber = stores.customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.customerName = stores.customerName,
       prod.contactLastName = stores.contactLastName,
       prod.contactFirstName = stores.contactFirstName,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.city = stores.city,
       prod.state = stores.state,
       prod.postalCode = stores.postalCode,
       prod.country = stores.country,
       prod.salesRepEmployeeNumber = stores.salesRepEmployeeNumber,
       prod.creditLimit = stores.creditLimit,
       prod.store_num = stores.store_num,
       prod.updated_date= etl.etl_batch_date,
       prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.customers prod
JOIN stores.customers_5 stores ON prod.src_customerNumber = stores.customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.customerName = stores.customerName,
       prod.contactLastName = stores.contactLastName,
       prod.contactFirstName = stores.contactFirstName,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.city = stores.city,
       prod.state = stores.state,
       prod.postalCode = stores.postalCode,
       prod.country = stores.country,
       prod.salesRepEmployeeNumber = stores.salesRepEmployeeNumber,
       prod.creditLimit = stores.creditLimit,
       prod.store_num = stores.store_num,
       prod.updated_date= etl.etl_batch_date,
       prod.etl_batch_no= etl.etl_batch_no;
       
INSERT INTO dwprod.customers
(
  src_customerNumber,
  customerName,
  contactLastName,
  contactFirstName,
  phone,
  addressLine1,
  addressLine2,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit,
  store_num,
  date,
  updated_date,
  etl_batch_no
)

SELECT stores.*,
	   etl.etl_batch_date AS etl_batch_date,
	   etl.etl_batch_no AS etl_batch_no
FROM stores.customers_1 stores LEFT JOIN dwprod.customers prod ON stores.customerNumber=prod.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_customerNumber IS NULL;

INSERT INTO dwprod.customers
(
  src_customerNumber,
  customerName,
  contactLastName,
  contactFirstName,
  phone,
  addressLine1,
  addressLine2,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS etl_batch_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.customers_2 stores LEFT JOIN dwprod.customers prod ON stores.customerNumber=prod.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_customerNumber IS NULL;
INSERT INTO dwprod.customers
(
  src_customerNumber,
  customerName,
  contactLastName,
  contactFirstName,
  phone,
  addressLine1,
  addressLine2,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS etl_batch_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.customers_3 stores LEFT JOIN dwprod.customers prod ON stores.customerNumber=prod.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_customerNumber IS NULL;
INSERT INTO dwprod.customers
(
  src_customerNumber,
  customerName,
  contactLastName,
  contactFirstName,
  phone,
  addressLine1,
  addressLine2,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS etl_batch_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.customers_4 stores LEFT JOIN dwprod.customers prod ON stores.customerNumber=prod.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_customerNumber IS NULL;
INSERT INTO dwprod.customers
(
  src_customerNumber,
  customerName,
  contactLastName,
  contactFirstName,
  phone,
  addressLine1,
  addressLine2,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS etl_batch_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.customers_5 stores LEFT JOIN dwprod.customers prod ON stores.customerNumber=prod.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_customerNumber IS NULL;

UPDATE dwprod.offices prod
JOIN stores.offices_1 stores ON prod.officeCode = stores.officeCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.city = stores.city,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.state = stores.state,
       prod.country = stores.country,
       prod.postalCode = stores.postalCode,
       prod.territory = stores.territory,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	   prod.etl_batch_no= etl.etl_batch_no;

UPDATE dwprod.offices prod
JOIN stores.offices_2 stores ON prod.officeCode = stores.officeCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.city = stores.city,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.state = stores.state,
       prod.country = stores.country,
       prod.postalCode = stores.postalCode,
       prod.territory = stores.territory,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.offices prod
JOIN stores.offices_3 stores ON prod.officeCode = stores.officeCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.city = stores.city,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.state = stores.state,
       prod.country = stores.country,
       prod.postalCode = stores.postalCode,
       prod.territory = stores.territory,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.offices prod
JOIN stores.offices_4 stores ON prod.officeCode = stores.officeCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.city = stores.city,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.state = stores.state,
       prod.country = stores.country,
       prod.postalCode = stores.postalCode,
       prod.territory = stores.territory,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.offices prod
JOIN stores.offices_5 stores ON prod.officeCode = stores.officeCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.city = stores.city,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.state = stores.state,
       prod.country = stores.country,
       prod.postalCode = stores.postalCode,
       prod.territory = stores.territory,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;       

INSERT INTO dwprod.offices
(
  officeCode,
  city,
  phone,
  addressLine1,
  addressLine2,
  state,
  country,
  postalCode,
  territory,
  store_num,
  date,
  updated_date,
  etl_batch_no
)

SELECT stores.*,
	   etl.etl_batch_date AS updated_date,
	   etl.etl_batch_no AS etl_batch_no
FROM stores.offices_1 stores LEFT JOIN dwprod.offices prod on stores.officeCode=prod.officeCode JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.officeCode IS NULL;

INSERT INTO dwprod.offices
(
  officeCode,
  city,
  phone,
  addressLine1,
  addressLine2,
  state,
  country,
  postalCode,
  territory,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.offices_2 stores LEFT JOIN dwprod.offices prod on stores.officeCode=prod.officeCode JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.officeCode IS NULL;
INSERT INTO dwprod.offices
(
  officeCode,
  city,
  phone,
  addressLine1,
  addressLine2,
  state,
  country,
  postalCode,
  territory,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.offices_3 stores LEFT JOIN dwprod.offices prod on stores.officeCode=prod.officeCode JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.officeCode IS NULL;
INSERT INTO dwprod.offices
(
  officeCode,
  city,
  phone,
  addressLine1,
  addressLine2,
  state,
  country,
  postalCode,
  territory,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.offices_4 stores LEFT JOIN dwprod.offices prod on stores.officeCode=prod.officeCode JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.officeCode IS NULL;
INSERT INTO dwprod.offices
(
  officeCode,
  city,
  phone,
  addressLine1,
  addressLine2,
  state,
  country,
  postalCode,
  territory,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.offices_5 stores LEFT JOIN dwprod.offices prod on stores.officeCode=prod.officeCode JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.officeCode IS NULL;

UPDATE dwprod.productlines prod
JOIN stores.productlines_1 stores ON prod.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.textDescription = stores.textDescription,
       prod.htmlDescription = stores.htmlDescription,
       prod.image = stores.image,
	prod.store_num=stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	   prod.etl_batch_no= etl.etl_batch_no;

UPDATE dwprod.productlines prod
JOIN stores.productlines_2 stores ON prod.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.textDescription = stores.textDescription,
       prod.htmlDescription = stores.htmlDescription,
       prod.image = stores.image,
        prod.store_num=stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.productlines prod
JOIN stores.productlines_3 stores ON prod.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.textDescription = stores.textDescription,
       prod.htmlDescription = stores.htmlDescription,
       prod.image = stores.image,
        prod.store_num=stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.productlines prod
JOIN stores.productlines_4 stores ON prod.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.textDescription = stores.textDescription,
       prod.htmlDescription = stores.htmlDescription,
       prod.image = stores.image,
        prod.store_num=stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.productlines prod
JOIN stores.productlines_5 stores ON prod.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.textDescription = stores.textDescription,
       prod.htmlDescription = stores.htmlDescription,
       prod.image = stores.image,
        prod.store_num=stores.store_num,
       prod.updated_date = etl.etl_batch_date,
           prod.etl_batch_no= etl.etl_batch_no;

INSERT INTO dwprod.productlines
(
  productline,
  textDescription,
  htmlDescription,
  image,
  store_num,
  date,
  updated_date,
  etl_batch_no
)

SELECT stores.*,
	   etl.etl_batch_date AS updated_date,
	   etl.etl_batch_no AS etl_batch_no
FROM stores.productlines_1 stores LEFT JOIN dwprod.productlines prod ON stores.productLine=prod.productLine JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.productLine IS NULL;

INSERT INTO dwprod.productlines
(
  productline,
  textDescription,
  htmlDescription,
  image,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.productlines_2 stores LEFT JOIN dwprod.productlines prod ON stores.productLine=prod.productLine JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.productLine IS NULL;
INSERT INTO dwprod.productlines
(
  productline,
  textDescription,
  htmlDescription,
  image,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.productlines_3 stores LEFT JOIN dwprod.productlines prod ON stores.productLine=prod.productLine JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.productLine IS NULL;
INSERT INTO dwprod.productlines
(
  productline,
  textDescription,
  htmlDescription,
  image,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.productlines_4 stores LEFT JOIN dwprod.productlines prod ON stores.productLine=prod.productLine JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.productLine IS NULL;
INSERT INTO dwprod.productlines
(
  productline,
  textDescription,
  htmlDescription,
  image,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.*,
           etl.etl_batch_date AS updated_date,
           etl.etl_batch_no AS etl_batch_no
FROM stores.productlines_5 stores LEFT JOIN dwprod.productlines prod ON stores.productLine=prod.productLine JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.productLine IS NULL;

UPDATE dwprod.products prod
JOIN stores.products_1 stores ON prod.src_productCode = stores.productCode
JOIN dwprod.productlines pl ON pl.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.productName = stores.productName,
       prod.productLine = stores.productLine,
       prod.productScale = stores.productScale,
       prod.productVendor = stores.productVendor,
       prod.productDescription = stores.productDescription,
       prod.quantityInStock = stores.quantityInStock,
       prod.buyPrice = stores.buyPrice,
       prod.MSRP = stores.MSRP,
       prod.dw_product_line_id = pl.dw_product_line_id,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	 prod.etl_batch_no= etl.etl_batch_no;

UPDATE dwprod.products prod
JOIN stores.products_2 stores ON prod.src_productCode = stores.productCode
JOIN dwprod.productlines pl ON pl.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.productName = stores.productName,
       prod.productLine = stores.productLine,
       prod.productScale = stores.productScale,
       prod.productVendor = stores.productVendor,
       prod.productDescription = stores.productDescription,
       prod.quantityInStock = stores.quantityInStock,
       prod.buyPrice = stores.buyPrice,
       prod.MSRP = stores.MSRP,
       prod.dw_product_line_id = pl.dw_product_line_id,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
         prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.products prod
JOIN stores.products_3 stores ON prod.src_productCode = stores.productCode
JOIN dwprod.productlines pl ON pl.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.productName = stores.productName,
       prod.productLine = stores.productLine,
       prod.productScale = stores.productScale,
       prod.productVendor = stores.productVendor,
       prod.productDescription = stores.productDescription,
       prod.quantityInStock = stores.quantityInStock,
       prod.buyPrice = stores.buyPrice,
       prod.MSRP = stores.MSRP,
       prod.dw_product_line_id = pl.dw_product_line_id,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
         prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.products prod
JOIN stores.products_4 stores ON prod.src_productCode = stores.productCode
JOIN dwprod.productlines pl ON pl.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.productName = stores.productName,
       prod.productLine = stores.productLine,
       prod.productScale = stores.productScale,
       prod.productVendor = stores.productVendor,
       prod.productDescription = stores.productDescription,
       prod.quantityInStock = stores.quantityInStock,
       prod.buyPrice = stores.buyPrice,
       prod.MSRP = stores.MSRP,
       prod.dw_product_line_id = pl.dw_product_line_id,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
         prod.etl_batch_no= etl.etl_batch_no;
UPDATE dwprod.products prod
JOIN stores.products_5 stores ON prod.src_productCode = stores.productCode
JOIN dwprod.productlines pl ON pl.productLine = stores.productLine
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.productName = stores.productName,
       prod.productLine = stores.productLine,
       prod.productScale = stores.productScale,
       prod.productVendor = stores.productVendor,
       prod.productDescription = stores.productDescription,
       prod.quantityInStock = stores.quantityInStock,
       prod.buyPrice = stores.buyPrice,
       prod.MSRP = stores.MSRP,
       prod.dw_product_line_id = pl.dw_product_line_id,
        prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
         prod.etl_batch_no= etl.etl_batch_no;

INSERT INTO dwprod.products
(
  src_productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP,
  dw_product_line_id,
  store_num,
  date,
  updated_date,
  etl_batch_no
)

SELECT stores.productCode,
       stores.productName,
       stores.productLine,
       stores.productScale,
       stores.productVendor,
       stores.productDescription,
       stores.quantityInStock,
       stores.buyPrice,
       stores.MSRP,
       B.dw_product_line_id,
	stores.store_num,
       stores.date,
       etl.etl_batch_date as updated_date,
       etl.etl_batch_no AS etl_batch_no
FROM stores.products_1 stores LEFT JOIN dwprod.products prod ON stores.productCode=prod.src_productCode
  JOIN dwprod.productlines B ON stores.productLine = B.productline
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_productCode IS NULL;

INSERT INTO dwprod.products
(
  src_productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP,
  dw_product_line_id,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.productCode,
       stores.productName,
       stores.productLine,
       stores.productScale,
       stores.productVendor,
       stores.productDescription,
       stores.quantityInStock,
       stores.buyPrice,
       stores.MSRP,
       B.dw_product_line_id,
        stores.store_num,
       stores.date,
       etl.etl_batch_date as updated_date,
       etl.etl_batch_no AS etl_batch_no
FROM stores.products_2 stores LEFT JOIN dwprod.products prod ON stores.productCode=prod.src_productCode
  JOIN dwprod.productlines B ON stores.productLine = B.productline
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_productCode IS NULL;
INSERT INTO dwprod.products
(
  src_productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP,
  dw_product_line_id,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.productCode,
       stores.productName,
       stores.productLine,
       stores.productScale,
       stores.productVendor,
       stores.productDescription,
       stores.quantityInStock,
       stores.buyPrice,
       stores.MSRP,
       B.dw_product_line_id,
        stores.store_num,
       stores.date,
       etl.etl_batch_date as updated_date,
       etl.etl_batch_no AS etl_batch_no
FROM stores.products_3 stores LEFT JOIN dwprod.products prod ON stores.productCode=prod.src_productCode
  JOIN dwprod.productlines B ON stores.productLine = B.productline
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_productCode IS NULL;
INSERT INTO dwprod.products
(
  src_productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP,
  dw_product_line_id,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.productCode,
       stores.productName,
       stores.productLine,
       stores.productScale,
       stores.productVendor,
       stores.productDescription,
       stores.quantityInStock,
       stores.buyPrice,
       stores.MSRP,
       B.dw_product_line_id,
        stores.store_num,
       stores.date,
       etl.etl_batch_date as updated_date,
       etl.etl_batch_no AS etl_batch_no
FROM stores.products_4 stores LEFT JOIN dwprod.products prod ON stores.productCode=prod.src_productCode
  JOIN dwprod.productlines B ON stores.productLine = B.productline
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_productCode IS NULL;
INSERT INTO dwprod.products
(
  src_productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP,
  dw_product_line_id,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT stores.productCode,
       stores.productName,
       stores.productLine,
       stores.productScale,
       stores.productVendor,
       stores.productDescription,
       stores.quantityInStock,
       stores.buyPrice,
       stores.MSRP,
       B.dw_product_line_id,
        stores.store_num,
       stores.date,
       etl.etl_batch_date as updated_date,
       etl.etl_batch_no AS etl_batch_no
FROM stores.products_5 stores LEFT JOIN dwprod.products prod ON stores.productCode=prod.src_productCode
  JOIN dwprod.productlines B ON stores.productLine = B.productline
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_productCode IS NULL;


UPDATE dwprod.employees prod
JOIN stores.employees_1 stores ON prod.employeeNumber = stores.employeeNumber
JOIN dwprod.offices o ON stores.officeCode = o.officeCode
JOIN dwprod.temp t ON stores.employeeNumber = t.employeeNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.lastName = stores.lastName,
       prod.firstName = stores.firstName,
       prod.extension = stores.extension,
       prod.email = stores.email,
       prod.officeCode = o.officeCode,
       prod.reportsTo = stores.reportsTo,
       prod.jobTitle = stores.jobTitle,
       prod.dw_office_id = o.dw_office_id,
       prod.dw_reporting_employee_id = t.dw_employee_id,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
prod.etl_batch_no = etl.etl_batch_no;

UPDATE dwprod.employees prod
JOIN stores.employees_2 stores ON prod.employeeNumber = stores.employeeNumber
JOIN dwprod.offices o ON stores.officeCode = o.officeCode
JOIN dwprod.temp t ON stores.employeeNumber = t.employeeNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.lastName = stores.lastName,
          prod.firstName = stores.firstName,
	         prod.extension = stores.extension,
		        prod.email = stores.email,
			       prod.officeCode = o.officeCode,
			              prod.reportsTo = stores.reportsTo,
				             prod.jobTitle = stores.jobTitle,
					            prod.dw_office_id = o.dw_office_id,
						           prod.dw_reporting_employee_id = t.dw_employee_id,
							           prod.store_num = stores.store_num,
								          prod.updated_date = etl.etl_batch_date,
									  prod.etl_batch_no = etl.etl_batch_no;

UPDATE dwprod.employees prod
JOIN stores.employees_3 stores ON prod.employeeNumber = stores.employeeNumber
JOIN dwprod.offices o ON stores.officeCode = o.officeCode
JOIN dwprod.temp t ON stores.employeeNumber = t.employeeNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.lastName = stores.lastName,
          prod.firstName = stores.firstName,
	         prod.extension = stores.extension,
		        prod.email = stores.email,
			       prod.officeCode = o.officeCode,
			              prod.reportsTo = stores.reportsTo,
				             prod.jobTitle = stores.jobTitle,
					            prod.dw_office_id = o.dw_office_id,
						           prod.dw_reporting_employee_id = t.dw_employee_id,
							           prod.store_num = stores.store_num,
								          prod.updated_date = etl.etl_batch_date,
									  prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.employees prod
JOIN stores.employees_4 stores ON prod.employeeNumber = stores.employeeNumber
JOIN dwprod.offices o ON stores.officeCode = o.officeCode
JOIN dwprod.temp t ON stores.employeeNumber = t.employeeNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.lastName = stores.lastName,
          prod.firstName = stores.firstName,
	         prod.extension = stores.extension,
		        prod.email = stores.email,
			       prod.officeCode = o.officeCode,
			              prod.reportsTo = stores.reportsTo,
				             prod.jobTitle = stores.jobTitle,
					            prod.dw_office_id = o.dw_office_id,
						           prod.dw_reporting_employee_id = t.dw_employee_id,
							           prod.store_num = stores.store_num,
								          prod.updated_date = etl.etl_batch_date,
									  prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.employees prod
JOIN stores.employees_5 stores ON prod.employeeNumber = stores.employeeNumber
JOIN dwprod.offices o ON stores.officeCode = o.officeCode
JOIN dwprod.temp t ON stores.employeeNumber = t.employeeNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.lastName = stores.lastName,
          prod.firstName = stores.firstName,
	         prod.extension = stores.extension,
		        prod.email = stores.email,
			       prod.officeCode = o.officeCode,
			              prod.reportsTo = stores.reportsTo,
				             prod.jobTitle = stores.jobTitle,
					            prod.dw_office_id = o.dw_office_id,
						           prod.dw_reporting_employee_id = t.dw_employee_id,
							           prod.store_num = stores.store_num,
								          prod.updated_date = etl.etl_batch_date,
									  prod.etl_batch_no = etl.etl_batch_no;
INSERT INTO dwprod.temp
(
  employeeNumber,
  lastName,
  firstName,
  extension,
  email,
  officeCode,
  reportsTo,
  jobTitle,
  store_num,
  date
)

SELECT a.*
FROM stores.employees_1 a 
 LEFT JOIN dwprod.temp t ON a.employeeNumber = t.employeeNumber 
WHERE t.employeeNumber IS NULL;

INSERT INTO dwprod.temp
(
  employeeNumber,
    lastName,
      firstName,
        extension,
	  email,
	    officeCode,
	      reportsTo,
	        jobTitle,
		  store_num,
		    date
		    )
		    SELECT a.*
		    FROM stores.employees_2 a
		     LEFT JOIN dwprod.temp t ON a.employeeNumber = t.employeeNumber
		     WHERE t.employeeNumber IS NULL;
INSERT INTO dwprod.temp
(
  employeeNumber,
    lastName,
      firstName,
        extension,
	  email,
	    officeCode,
	      reportsTo,
	        jobTitle,
		  store_num,
		    date
		    )
		    SELECT a.*
		    FROM stores.employees_3 a
		     LEFT JOIN dwprod.temp t ON a.employeeNumber = t.employeeNumber
		     WHERE t.employeeNumber IS NULL;
INSERT INTO dwprod.temp
(
  employeeNumber,
    lastName,
      firstName,
        extension,
	  email,
	    officeCode,
	      reportsTo,
	        jobTitle,
		  store_num,
		    date
		    )
		    SELECT a.*
		    FROM stores.employees_4 a
		     LEFT JOIN dwprod.temp t ON a.employeeNumber = t.employeeNumber
		     WHERE t.employeeNumber IS NULL;
INSERT INTO dwprod.temp
(
  employeeNumber,
    lastName,
      firstName,
        extension,
	  email,
	    officeCode,
	      reportsTo,
	        jobTitle,
		  store_num,
		    date
		    )
		    SELECT a.*
		    FROM stores.employees_5 a
		     LEFT JOIN dwprod.temp t ON a.employeeNumber = t.employeeNumber
		     WHERE t.employeeNumber IS NULL;

INSERT INTO dwprod.employees
(
  employeeNumber,
  lastName,
  firstName,
  extension,
  email,
  officeCode,
  reportsTo,
  jobTitle,
  dw_office_id,
  dw_reporting_employee_id,
  store_num,
  date,
  updated_date,
  etl_batch_no
  )

SELECT a.employeeNumber,
       a.lastName,
       a.firstName,
       a.extension,
       a.email,
       a.officeCode,
       a.reportsTo,
       a.jobTitle,
       b.dw_office_id,
       c.dw_employee_id,
       a.store_num,
       etl.etl_batch_date,
       etl.etl_batch_date,
       etl.etl_batch_no AS etl_batch_no
FROM dwprod.temp a
  JOIN dwprod.offices b ON a.officeCode = b.officeCode
  LEFT JOIN dwprod.temp c ON a.reportsTo = c.employeeNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE a.employeeNumber NOT IN (SELECT employeeNumber FROM dwprod.employees);

UPDATE dwprod.payments prod
JOIN stores.payments_1 stores ON prod.checkNumber = stores.checkNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.paymentDate = stores.paymentDate,
       prod.amount = stores.amount,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;

UPDATE dwprod.payments prod
JOIN stores.payments_2 stores ON prod.checkNumber = stores.checkNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.paymentDate = stores.paymentDate,
       prod.amount = stores.amount,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.payments prod
JOIN stores.payments_3 stores ON prod.checkNumber = stores.checkNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.paymentDate = stores.paymentDate,
       prod.amount = stores.amount,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.payments prod
JOIN stores.payments_4 stores ON prod.checkNumber = stores.checkNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.paymentDate = stores.paymentDate,
       prod.amount = stores.amount,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.payments prod
JOIN stores.payments_5 stores ON prod.checkNumber = stores.checkNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.paymentDate = stores.paymentDate,
       prod.amount = stores.amount,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;


INSERT INTO dwprod.payments
(
  dw_customer_id,
  src_customerNumber,
  checkNumber,
  paymentDate,
  amount,
  store_num,
  date,
  updated_date,
  etl_batch_no
)

SELECT c.dw_customer_id,
       stores.customerNumber,
       stores.checkNumber,
       stores.paymentDate,
       stores.amount,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no
FROM stores.payments_1 stores LEFT JOIN dwprod.payments prod ON stores.checkNumber=prod.checkNumber
  JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.checkNumber IS NULL;

INSERT INTO dwprod.payments
(
  dw_customer_id,
  src_customerNumber,
  checkNumber,
  paymentDate,
  amount,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT c.dw_customer_id,
       stores.customerNumber,
       stores.checkNumber,
       stores.paymentDate,
       stores.amount,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no
FROM stores.payments_2 stores LEFT JOIN dwprod.payments prod ON stores.checkNumber=prod.checkNumber
  JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.checkNumber IS NULL;
INSERT INTO dwprod.payments
(
  dw_customer_id,
  src_customerNumber,
  checkNumber,
  paymentDate,
  amount,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT c.dw_customer_id,
       stores.customerNumber,
       stores.checkNumber,
       stores.paymentDate,
       stores.amount,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no
FROM stores.payments_3 stores LEFT JOIN dwprod.payments prod ON stores.checkNumber=prod.checkNumber
  JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.checkNumber IS NULL;
INSERT INTO dwprod.payments
(
  dw_customer_id,
  src_customerNumber,
  checkNumber,
  paymentDate,
  amount,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT c.dw_customer_id,
       stores.customerNumber,
       stores.checkNumber,
       stores.paymentDate,
       stores.amount,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no
FROM stores.payments_4 stores LEFT JOIN dwprod.payments prod ON stores.checkNumber=prod.checkNumber
  JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.checkNumber IS NULL;
INSERT INTO dwprod.payments
(
  dw_customer_id,
  src_customerNumber,
  checkNumber,
  paymentDate,
  amount,
  store_num,
  date,
  updated_date,
  etl_batch_no
)
SELECT c.dw_customer_id,
       stores.customerNumber,
       stores.checkNumber,
       stores.paymentDate,
       stores.amount,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no
FROM stores.payments_5 stores LEFT JOIN dwprod.payments prod ON stores.checkNumber=prod.checkNumber
  JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.checkNumber IS NULL;

UPDATE dwprod.orders prod
JOIN stores.orders_1 stores ON prod.src_orderNumber = stores.orderNumber
JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
SET prod.dw_customer_id = c.dw_customer_id,
       prod.orderDate = stores.orderDate,
       prod.requiredDate = stores.requiredDate,
       prod.shippedDate = stores.shippedDate,
       prod.status = stores.status,
       prod.comments = stores.comments,
       prod.src_customerNumber = stores.customerNumber,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no,
prod.cancelledDate = stores.cancelledDate;

UPDATE dwprod.orders prod
JOIN stores.orders_2 stores ON prod.src_orderNumber = stores.orderNumber
JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.dw_customer_id = c.dw_customer_id,
       prod.orderDate = stores.orderDate,
       prod.requiredDate = stores.requiredDate,
       prod.shippedDate = stores.shippedDate,
       prod.status = stores.status,
       prod.comments = stores.comments,
       prod.src_customerNumber = stores.customerNumber,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no,
prod.cancelledDate = stores.cancelledDate;
UPDATE dwprod.orders prod JOIN etl_metadata.batch_control etl ON 1=1
JOIN stores.orders_3 stores ON prod.src_orderNumber = stores.orderNumber
JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
   SET prod.dw_customer_id = c.dw_customer_id,
       prod.orderDate = stores.orderDate,
       prod.requiredDate = stores.requiredDate,
       prod.shippedDate = stores.shippedDate,
       prod.status = stores.status,
       prod.comments = stores.comments,
       prod.src_customerNumber = stores.customerNumber,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no,
prod.cancelledDate = stores.cancelledDate;
UPDATE dwprod.orders prod JOIN etl_metadata.batch_control etl ON 1=1
JOIN stores.orders_4 stores ON prod.src_orderNumber = stores.orderNumber
JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
   SET prod.dw_customer_id = c.dw_customer_id,
       prod.orderDate = stores.orderDate,
       prod.requiredDate = stores.requiredDate,
       prod.shippedDate = stores.shippedDate,
       prod.status = stores.status,
       prod.comments = stores.comments,
       prod.src_customerNumber = stores.customerNumber,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no,
	prod.cancelledDate = stores.cancelledDate;
UPDATE dwprod.orders prod JOIN etl_metadata.batch_control etl ON 1=1
JOIN stores.orders_5 stores ON prod.src_orderNumber = stores.orderNumber
JOIN dwprod.customers c ON stores.customerNumber = c.src_customerNumber
   SET prod.dw_customer_id = c.dw_customer_id,
       prod.orderDate = stores.orderDate,
       prod.requiredDate = stores.requiredDate,
       prod.shippedDate = stores.shippedDate,
       prod.status = stores.status,
       prod.comments = stores.comments,
       prod.src_customerNumber = stores.customerNumber,
	prod.store_num = stores.store_num,
       prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no,
	prod.cancelledDate = stores.cancelledDate;

INSERT INTO dwprod.orders
(
  dw_customer_id,
  src_orderNumber,
  orderDate,
  requiredDate,
  shippedDate,
  status,
  comments,
  src_customerNumber,
  store_num,
  date,
  updated_date,
  etl_batch_no,
  cancelledDate
)

SELECT C.dw_customer_id,
       stores.orderNumber,
       stores.orderDate,
       stores.requiredDate,
       stores.shippedDate,
       stores.status,
       stores.comments,
       stores.customerNumber,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no,
	stores.cancelledDate
FROM stores.orders_1 stores LEFT JOIN dwprod.orders prod ON stores.orderNumber=prod.src_orderNumber
  JOIN dwprod.customers C ON stores.customerNumber = C.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_orderNumber IS NULL;

INSERT INTO dwprod.orders
(
  dw_customer_id,
  src_orderNumber,
  orderDate,
  requiredDate,
  shippedDate,
  status,
  comments,
  src_customerNumber,
  store_num,
  date,
  updated_date,
  etl_batch_no,
  cancelledDate

)
SELECT C.dw_customer_id,
       stores.orderNumber,
       stores.orderDate,
       stores.requiredDate,
       stores.shippedDate,
       stores.status,
       stores.comments,
       stores.customerNumber,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no,
	stores.cancelledDate
FROM stores.orders_2 stores LEFT JOIN dwprod.orders prod ON stores.orderNumber=prod.src_orderNumber
  JOIN dwprod.customers C ON stores.customerNumber = C.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_orderNumber IS NULL;
INSERT INTO dwprod.orders
(
  dw_customer_id,
  src_orderNumber,
  orderDate,
  requiredDate,
  shippedDate,
  status,
  comments,
  src_customerNumber,
  store_num,
  date,
  updated_date,
  etl_batch_no,
  cancelledDate

)
SELECT C.dw_customer_id,
       stores.orderNumber,
       stores.orderDate,
       stores.requiredDate,
       stores.shippedDate,
       stores.status,
       stores.comments,
       stores.customerNumber,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no,
	stores.cancelledDate
FROM stores.orders_3 stores LEFT JOIN dwprod.orders prod ON stores.orderNumber=prod.src_orderNumber
  JOIN dwprod.customers C ON stores.customerNumber = C.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_orderNumber IS NULL;
INSERT INTO dwprod.orders
(
  dw_customer_id,
  src_orderNumber,
  orderDate,
  requiredDate,
  shippedDate,
  status,
  comments,
  src_customerNumber,
  store_num,
  date,
  updated_date,
  etl_batch_no,
  cancelledDate

)
SELECT C.dw_customer_id,
       stores.orderNumber,
       stores.orderDate,
       stores.requiredDate,
       stores.shippedDate,
       stores.status,
       stores.comments,
       stores.customerNumber,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no,
	stores.cancelledDate
FROM stores.orders_4 stores LEFT JOIN dwprod.orders prod ON stores.orderNumber=prod.src_orderNumber
  JOIN dwprod.customers C ON stores.customerNumber = C.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_orderNumber IS NULL;
INSERT INTO dwprod.orders
(
  dw_customer_id,
  src_orderNumber,
  orderDate,
  requiredDate,
  shippedDate,
  status,
  comments,
  src_customerNumber,
  store_num,
  date,
  updated_date,
  etl_batch_no,
  cancelledDate

)
SELECT C.dw_customer_id,
       stores.orderNumber,
       stores.orderDate,
       stores.requiredDate,
       stores.shippedDate,
       stores.status,
       stores.comments,
       stores.customerNumber,
       stores.store_num,
	stores.date,
	stores.date,
	etl.etl_batch_no,
	stores.cancelledDate
FROM stores.orders_5 stores LEFT JOIN dwprod.orders prod ON stores.orderNumber=prod.src_orderNumber
  JOIN dwprod.customers C ON stores.customerNumber = C.src_customerNumber
JOIN etl_metadata.batch_control etl ON 1=1
WHERE prod.src_orderNumber IS NULL;

UPDATE dwprod.orderdetails prod
JOIN stores.orderdetails_1 stores ON prod.src_orderNumber = stores.orderNumber AND prod.src_productCode = stores.productCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.quantityOrdered = stores.quantityOrdered,
       prod.priceEach = stores.priceEach,
	prod.store_num = stores.store_num,
	prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.orderdetails prod
JOIN stores.orderdetails_2 stores ON prod.src_orderNumber = stores.orderNumber AND prod.src_productCode = stores.productCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.quantityOrdered = stores.quantityOrdered,
       prod.priceEach = stores.priceEach,
	prod.store_num = stores.store_num,
	prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;

UPDATE dwprod.orderdetails prod
JOIN stores.orderdetails_3 stores ON prod.src_orderNumber = stores.orderNumber AND prod.src_productCode = stores.productCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.quantityOrdered = stores.quantityOrdered,
       prod.priceEach = stores.priceEach,
	prod.store_num = stores.store_num,
	prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.orderdetails prod
JOIN stores.orderdetails_4 stores ON prod.src_orderNumber = stores.orderNumber AND prod.src_productCode = stores.productCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.quantityOrdered = stores.quantityOrdered,
       prod.priceEach = stores.priceEach,
	prod.store_num = stores.store_num,
	prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
UPDATE dwprod.orderdetails prod
JOIN stores.orderdetails_5 stores ON prod.src_orderNumber = stores.orderNumber AND prod.src_productCode = stores.productCode
JOIN etl_metadata.batch_control etl ON 1=1
   SET prod.quantityOrdered = stores.quantityOrdered,
       prod.priceEach = stores.priceEach,
	prod.store_num = stores.store_num,
	prod.updated_date = etl.etl_batch_date,
	prod.etl_batch_no = etl.etl_batch_no;
       
INSERT INTO dwprod.orderdetails
(
  dw_order_id,
  dw_product_id,
  src_orderNumber,
  src_productCode,
  quantityOrdered,
  priceEach,
  store_num,
  date,
  updated_date,
  etl_batch_no
  )

SELECT o.dw_order_id,
       p.dw_product_id,
       od.*,
       etl.etl_batch_date,
	etl.etl_batch_no
FROM (stores.orderdetails_1 od
  JOIN dwprod.orders o ON o.src_orderNumber = od.orderNumber
  JOIN dwprod.products p ON od.productCode = p.src_productCode)
  LEFT JOIN dwprod.orderdetails pod
         ON od.orderNumber = pod.src_orderNumber
        AND od.productCode = pod.src_productCode
JOIN etl_metadata.batch_control etl on 1=1
WHERE pod.src_orderNumber IS NULL
AND    pod.src_productCode IS NULL;

INSERT INTO dwprod.orderdetails
(
  dw_order_id,
  dw_product_id,
  src_orderNumber,
  src_productCode,
  quantityOrdered,
  priceEach,
  store_num,
  date,
  updated_date,
  etl_batch_no
  
)
SELECT o.dw_order_id,
       p.dw_product_id,
       od.*,
       etl.etl_batch_date,
	etl.etl_batch_no
FROM (stores.orderdetails_2 od
  JOIN dwprod.orders o ON o.src_orderNumber = od.orderNumber
  JOIN dwprod.products p ON od.productCode = p.src_productCode)
  LEFT JOIN dwprod.orderdetails pod
         ON od.orderNumber = pod.src_orderNumber
        AND od.productCode = pod.src_productCode
JOIN etl_metadata.batch_control etl on 1=1
WHERE pod.src_orderNumber IS NULL
AND    pod.src_productCode IS NULL;

INSERT INTO dwprod.orderdetails
(
  dw_order_id,
  dw_product_id,
  src_orderNumber,
  src_productCode,
  quantityOrdered,
  priceEach,
  store_num,
  date,
  updated_date,
  etl_batch_no
  
)
SELECT o.dw_order_id,
       p.dw_product_id,
       od.*,
       etl.etl_batch_date,
	etl.etl_batch_no
FROM (stores.orderdetails_3 od
  JOIN dwprod.orders o ON o.src_orderNumber = od.orderNumber
  JOIN dwprod.products p ON od.productCode = p.src_productCode)
  LEFT JOIN dwprod.orderdetails pod
         ON od.orderNumber = pod.src_orderNumber
        AND od.productCode = pod.src_productCode
JOIN etl_metadata.batch_control etl on 1=1
WHERE pod.src_orderNumber IS NULL
AND    pod.src_productCode IS NULL;

INSERT INTO dwprod.orderdetails
(
  dw_order_id,
  dw_product_id,
  src_orderNumber,
  src_productCode,
  quantityOrdered,
  priceEach,
  store_num,
  date,
  updated_date,
  etl_batch_no
  
)
SELECT o.dw_order_id,
       p.dw_product_id,
       od.*,
       etl.etl_batch_date,
	etl.etl_batch_no
FROM (stores.orderdetails_4 od
  JOIN dwprod.orders o ON o.src_orderNumber = od.orderNumber
  JOIN dwprod.products p ON od.productCode = p.src_productCode)
  LEFT JOIN dwprod.orderdetails pod
         ON od.orderNumber = pod.src_orderNumber
        AND od.productCode = pod.src_productCode
JOIN etl_metadata.batch_control etl on 1=1
WHERE pod.src_orderNumber IS NULL
AND    pod.src_productCode IS NULL;

INSERT INTO dwprod.orderdetails
(
  dw_order_id,
  dw_product_id,
  src_orderNumber,
  src_productCode,
  quantityOrdered,
  priceEach,
  store_num,
  date,
  updated_date,
  etl_batch_no
  
)
SELECT o.dw_order_id,
       p.dw_product_id,
       od.*,
       etl.etl_batch_date,
	etl.etl_batch_no
FROM (stores.orderdetails_5 od
  JOIN dwprod.orders o ON o.src_orderNumber = od.orderNumber
  JOIN dwprod.products p ON od.productCode = p.src_productCode)
  LEFT JOIN dwprod.orderdetails pod
         ON od.orderNumber = pod.src_orderNumber
        AND od.productCode = pod.src_productCode
JOIN etl_metadata.batch_control etl on 1=1
WHERE pod.src_orderNumber IS NULL
AND    pod.src_productCode IS NULL;



hi
