chmod 777 ~/source/*
cd ~/source
for file in *;
do
	mv $file ~/processing
done
cd ~/processing
mysql -u root -pPreethi123 2>/dev/null<<eof 
SET GLOBAL local_infile=1; 
eof
current_ts=$(date "+%Y.%m.%d-%H.%M.%S")
echo Files under processing
ls | wc -l
for file in *;
do
sh ~/stage.sh
	store_num=`echo "$file" | awk -F'[_.]' '{print $2}'`
if [[ $file == "customers"* ]];
then
	mysql -u root -pPreethi123 2>/dev/null<<QUERY
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.customers
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.customers set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
QUERY
mv $file ~/processed/customers_$store_num-$current_ts.csv

echo Files under processing
ls | wc -l
elif [[ $file == "offices"* ]];
then
	mysql -u root -pPreethi123 2>/dev/null<< eof
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.offices
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.offices set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
eof
mv $file ~/processed/offices_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

elif [[ $file == "productlines"* ]];
then
	mysql -u root -pPreethi123 2>/dev/null<< eof
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.productlines
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.productlines set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
eof
mv $file ~/processed/productlines_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

fi
sh ~/update_prod.sh

done
for file in *;
do
	sh ~/stage.sh
        store_num=`echo "$file" | awk -F'[_.]' '{print $2}'`
if [[ $file == "payments"* ]];
then
	        mysql -u root -pPreethi123 2>/dev/null<< eof
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.payments
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.payments set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
eof
mv $file ~/processed/payments_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

elif [[ $file == "products"* ]];
then
	        mysql -u root -pPreethi123 2>/dev/null<< eof
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.products
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.products set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
eof
mv $file ~/processed/products_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

elif [[ $file == "orders"* ]];
then
	        mysql -u root -pPreethi123 2>/dev/null<< eof
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.orders
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.orders set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
eof
mv $file ~/processed/orders_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

elif [[ $file == "employees"* ]];
then
	        mysql -u root -pPreethi123 2>/dev/null<<QUERY
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.employees
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.employees set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
QUERY
mv $file ~/processed/employees_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

fi
sh ~/update_prod.sh

done
for file in *;
do
sh ~/stage.sh
	        store_num=`echo "$file" | awk -F'[_.]' '{print $2}'`
	if [[ $file == "orderdetails"* ]];
	then
		        mysql -u root -pPreethi123 2>/dev/null<< eof
SET GLOBAL SQL_MODE='';
LOAD DATA LOCAL INFILE '$file'
INTO TABLE stage.orderdetails
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.orderdetails set create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP,store_num=$store_num;
eof
mv $file ~/processed/orderdetails_$store_num-$current_ts.csv
echo Files under processing
ls | wc -l

fi
sh ~/update_prod.sh

done
echo No.of Processed Files are `ls ~/processed|wc -l`

