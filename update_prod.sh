mysql -u root -pPreethi123 2>/dev/null<< eof

UPDATE dw_prod.offices prod
JOIN stage.offices stores ON prod.officeCode = stores.officeCode and prod.store_num = stores.store_num
   SET prod.city = stores.city,
       prod.phone = stores.phone,
       prod.addressLine1 = stores.addressLine1,
       prod.addressLine2 = stores.addressLine2,
       prod.state = stores.state,
       prod.country = stores.country,
       prod.postalCode = stores.postalCode,
       prod.territory = stores.territory,
       prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.offices
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
  create_ts,
  update_ts
)
SELECT stores.*
FROM stage.offices stores LEFT JOIN dw_prod.offices prod on stores.officeCode = prod.officeCode and prod.store_num = stores.store_num
WHERE prod.officeCode IS NULL;

UPDATE dw_prod.employees prod
JOIN stage.employees stores ON prod.employeeNumber = stores.employeeNumber and prod.store_num = stores.store_num
JOIN dw_prod.offices o ON stores.officeCode = o.officeCode
JOIN dw_prod.temp t ON stores.employeeNumber = t.employeeNumber
   SET prod.lastName = stores.lastName,
       prod.firstName = stores.firstName,
       prod.extension = stores.extension,
       prod.email = stores.email,
       prod.officeCode = o.officeCode,
       prod.reportsTo = stores.reportsTo,
       prod.jobTitle = stores.jobTitle,
       prod.dw_office_id = o.dw_office_id,
       prod.dw_reporting_employee_id = t.dw_employee_id,
       prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.temp
(
  employeeNumber,
  lastName,
  firstName,
  extension,
  email,
  reportsTo,
  jobTitle,
  officeCode,
  store_num,
  create_ts,
  update_ts
)

SELECT a.*
FROM stage.employees a
 LEFT JOIN dw_prod.temp t ON a.employeeNumber = t.employeeNumber and a.store_num = t.store_num
WHERE t.employeeNumber IS NULL;

INSERT INTO dw_prod.employees
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
  create_ts,
  update_ts
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
       a.create_ts,
       a.update_ts
FROM dw_prod.temp a
  JOIN dw_prod.offices b ON a.officeCode = b.officeCode
  LEFT JOIN dw_prod.temp c ON a.reportsTo = c.employeeNumber and a.store_num = c.store_num
WHERE a.employeeNumber NOT IN (SELECT employeeNumber FROM dw_prod.employees);

UPDATE dw_prod.customers prod
JOIN stage.customers stores ON prod.src_customerNumber = stores.customerNumber and  prod.store_num = stores.store_num
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
       prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.customers
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
  create_ts,
  update_ts
)

SELECT stores.*
FROM stage.customers stores LEFT JOIN dw_prod.customers prod ON stores.customerNumber=prod.src_customerNumber
and  prod.store_num = stores.store_num
WHERE prod.src_customerNumber IS NULL;

UPDATE dw_prod.orders prod
JOIN stage.orders stores ON prod.src_orderNumber = stores.orderNumber and prod.store_num = stores.store_num
JOIN dw_prod.customers c ON stores.customerNumber = c.src_customerNumber
SET prod.dw_customer_id = c.dw_customer_id,
       prod.orderDate = stores.orderDate,
       prod.requiredDate = stores.requiredDate,
       prod.shippedDate = stores.shippedDate,
       prod.status = stores.status,
       prod.comments = stores.comments,
       prod.src_customerNumber = stores.customerNumber,
       prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.orders
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
  create_ts,
  update_ts
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
       stores.create_ts,
       stores.update_ts
FROM stage.orders stores LEFT JOIN dw_prod.orders prod ON stores.orderNumber=prod.src_orderNumber and prod.store_num = stores.store_num
  JOIN dw_prod.customers C ON stores.customerNumber = C.src_customerNumber
WHERE prod.src_orderNumber IS NULL;

UPDATE dw_prod.productlines prod
JOIN stage.productlines stores ON prod.productLine = stores.productLine
and prod.store_num = stores.store_num
   SET prod.textDescription = stores.textDescription,
       prod.htmlDescription = stores.htmlDescription,
       prod.image = stores.image,
       prod.update_ts = stores.update_ts
       ;

INSERT INTO dw_prod.productlines
(
  productline,
  textDescription,
  htmlDescription,
  image,
  store_num,
  create_ts,
  update_ts
)

SELECT stores.*
FROM stage.productlines stores LEFT JOIN dw_prod.productlines prod ON stores.productLine=prod.productLine and prod.store_num = stores.store_num
WHERE prod.productLine IS NULL;

UPDATE dw_prod.products prod
JOIN stage.products stores ON prod.src_productCode = stores.productCode
JOIN dw_prod.productlines pl ON pl.productLine = stores.productLine
and prod.store_num = stores.store_num
   SET prod.productName = stores.productName,
       prod.productLine = stores.productLine,
       prod.productScale = stores.productScale,
       prod.productVendor = stores.productVendor,
       prod.productDescription = stores.productDescription,
       prod.quantityInStock = stores.quantityInStock,
       prod.buyPrice = stores.buyPrice,
       prod.MSRP = stores.MSRP,
       prod.dw_product_line_id = pl.dw_product_line_id,
       prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.products
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
  create_ts,
  update_ts
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
       stores.create_ts,
       stores.update_ts
FROM stage.products stores LEFT JOIN dw_prod.products prod ON stores.productCode=prod.src_productCode and prod.store_num = stores.store_num
  JOIN dw_prod.productlines B ON stores.productLine = B.productline
WHERE prod.src_productCode IS NULL;


UPDATE dw_prod.payments prod
JOIN stage.payments stores ON prod.checkNumber = stores.checkNumber and prod.store_num = stores.store_num
   SET prod.paymentDate = stores.paymentDate,
       prod.amount = stores.amount,
       prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.payments
(
  dw_customer_id,
  src_customerNumber,
  checkNumber,
  paymentDate,
  amount,
  store_num,
  create_ts,
  update_ts
)

SELECT c.dw_customer_id,
       stores.customerNumber,
       stores.checkNumber,
       stores.paymentDate,
       stores.amount,
       stores.store_num,
       stores.create_ts,
       stores.update_ts
FROM stage.payments stores LEFT JOIN dw_prod.payments prod ON stores.checkNumber=prod.checkNumber and prod.store_num = stores.store_num
  JOIN dw_prod.customers c ON stores.customerNumber = c.src_customerNumber
WHERE prod.checkNumber IS NULL;

UPDATE dw_prod.orderdetails prod
JOIN stage.orderdetails stores ON prod.src_orderNumber = stores.orderNumber AND prod.src_productCode = stores.productCode and prod.store_num = stores.store_num
   SET prod.quantityOrdered = stores.quantityOrdered,
       prod.priceEach = stores.priceEach,
        prod.update_ts = stores.update_ts;

INSERT INTO dw_prod.orderdetails
(
  dw_order_id,
  dw_product_id,
  src_orderNumber,
  src_productCode,
  quantityOrdered,
  priceEach,
  store_num,
  create_ts,
  update_ts
  )

SELECT o.dw_order_id,
       p.dw_product_id,
       od.*
FROM (stage.orderdetails od
  JOIN dw_prod.orders o ON o.src_orderNumber = od.orderNumber
  JOIN dw_prod.products p ON od.productCode = p.src_productCode)
  LEFT JOIN dw_prod.orderdetails pod
         ON od.orderNumber = pod.src_orderNumber
        AND od.productCode = pod.src_productCode and pod.store_num = od.store_num
WHERE pod.src_orderNumber IS NULL;

commit;
eof
