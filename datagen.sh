#!/bin/bash

store_num=$1
mysqldom=54.224.209.13
mysqluser=preetham
mysqlpass=preetham@23B
db1=ClassicModels
db2=preetham_dwstage

mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 2>/dev/null<< eof
drop table if exists $db2.temp;
create table $db2.temp as select * from Offices where RAND() between 0.1 and 0.6;
eof
mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db2 -b -e "select * from temp;">~/offices_$store_num.sh
cat ~/offices_$store_num.sh|sed 's/,//g'|sed 's/\t/,/g'|cut -d, -f9 --complement >~/source/offices_$store_num.csv
sed -i 1D ~/source/offices_$store_num.csv
rm ~/offices_$store_num.sh


mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 2>/dev/null<< eof
drop table if exists $db2.temp1;
create table $db2.temp1 as select e1.* from Employees e1 join Employees e2 on e1.reportsTo=e2.employeeNumber join $db2.temp t on t.officeCode=e1.officeCode where RAND() between 0.1 and 0.6;
eof
mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db2 -b -e "select * from temp1;">~/employees_$store_num.sh
cat ~/employees_$store_num.sh|sed 's/\t/,/g' >~/source/employees_$store_num.csv
sed -i 1D ~/source/employees_$store_num.csv
rm ~/employees_$store_num.sh


mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 2>/dev/null<< eof
drop table if exists $db2.temp;
create table $db2.temp as select c.* from Customers c join $db2.temp1 t on t.employeeNumber=c.salesRepEmployeeNumber order by RAND() limit 20;
eof
mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db2 -b -e "select * from temp;">~/customers_$store_num.sh
cat ~/customers_$store_num.sh|sed 's/,//g'|sed 's/\t/,/g'|cut -d, -f14 --complement >~/source/customers_$store_num.csv
sed -i 1D ~/source/customers_$store_num.csv
rm ~/customers_$store_num.sh

mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 -b -e "select p.* from Payments p join $db2.temp t on p.customerNumber=t.customerNumber where RAND() between 0.1 and 0.6;">~/payments_$store_num.sh
cat ~/payments_$store_num.sh|sed 's/\t/,/g' >~/source/payments_$store_num.csv
sed -i 1D ~/source/payments_$store_num.csv
rm ~/payments_$store_num.sh


mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 2>/dev/null<< eof
drop table if exists $db2.temp1;
create table $db2.temp1 as select * from ProductLines where RAND() between 0.1 and 0.6;
eof
mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db2 -b -e "select * from temp1;">~/productlines_$store_num.sh
cat ~/productlines_$store_num.sh|sed 's/\t/,/g' >~/source/productlines_$store_num.csv
sed -i 1D ~/source/productlines_$store_num.csv
rm ~/productlines_$store_num.sh


mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 2>/dev/null<< eof
drop table if exists $db2.temp2;
create table $db2.temp2 as select p.* from Products p join $db2.temp1 t on t.productLine=p.productLine where RAND() between 0.1 and 0.6;
eof
mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db2 -b -e "select * from temp2;">~/products_$store_num.sh
cat ~/products_$store_num.sh|sed 's/\t/,/g' >~/source/products_$store_num.csv
sed -i 1D ~/source/products_$store_num.csv
rm ~/products_$store_num.sh


mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 2>/dev/null<< eof
drop table if exists $db2.temp1;
create table $db2.temp1 as select o.* from Orders  o join $db2.temp t on t.customerNumber=o.customerNumber where RAND() between 0.1 and 0.6;
eof
mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db2 -b -e "select * from temp1;">~/orders_$store_num.sh
cat ~/orders_$store_num.sh|sed 's/\t/,/g' >~/source/orders_$store_num.csv
sed -i 1D ~/source/orders_$store_num.csv
rm ~/orders_$store_num.sh


mysql -h $mysqldom -u $mysqluser -p$mysqlpass $db1 -b -e "select od.* from OrderDetails od join $db2.temp1 on temp1.orderNumber=od.orderNumber join $db2.temp2 on temp2.productCode=od.productCode where RAND() between 0.1 and 0.6;">~/orderdetails_$store_num.sh
cat ~/orderdetails_$store_num.sh|sed 's/\t/,/g'|cut -d, -f5 --complement >~/source/orderdetails_$store_num.csv
sed -i 1D ~/source/orderdetails_$store_num.csv
rm ~/orderdetails_$store_num.sh

