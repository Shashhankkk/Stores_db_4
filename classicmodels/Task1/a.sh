sh ./database.sh
k=1
for (( i=1; i <= 10 ; i++ ))
do
	db= shuf -i 20050609-20050614 -n 1
	for (( j=1; j<=5; j++ ))
	do
		if [ $db==20050609 ]; then
			shuf -n 10 CUSTOMERS20050609.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050609.csv>employees_$j.csv
			shuf -n 5 OFFICES20050609.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050609.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050609.csv>products_$j.csv
		
		elif [ $db==20050610 ]; then
			shuf -n 10 CUSTOMERS20050610.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050610.csv>employees_$j.csv
			shuf -n 5 OFFICES20050610.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050610.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050610.csv>products_$j.csv
		elif [ $db==20050611 ]; then
			shuf -n 10 CUSTOMERS20050611.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050611.csv>employees_$j.csv
			shuf -n 5 OFFICES20050611.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050611.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050611.csv>products_$j.csv
		elif [ $db==20050612 ]; then
			shuf -n 10 CUSTOMERS20050612.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050612.csv>employees_$j.csv
			shuf -n 5 OFFICES20050612.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050612.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050612.csv>products_$j.csv
		elif [ $db==20050613 ]; then
			shuf -n 10 CUSTOMERS20050613.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050613.csv>employees_$j.csv
			shuf -n 5 OFFICES20050613.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050613.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050613.csv>products_$j.csv
		elif [ $db==20050614 ]; then
			shuf -n 10 CUSTOMERS20050614.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050614.csv>employees_$j.csv
			shuf -n 5 OFFICES20050614.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050614.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050614.csv>products_$j.csv
		fi
	done
	mysql -u root -pPreethi123 << start
	truncate stores.customers_1;
	truncate stores.customers_2;
	truncate stores.customers_3;
	truncate stores.customers_4;
	truncate stores.customers_5;
	truncate stores.employees_1;
	truncate stores.employees_2;
	truncate stores.employees_3;
	truncate stores.employees_4;
	truncate stores.employees_5;
	truncate stores.offices_1;
	truncate stores.offices_2;
	truncate stores.offices_3;
	truncate stores.offices_4;
	truncate stores.offices_5;
	truncate stores.productlines_1;
	truncate stores.productlines_2;
	truncate stores.productlines_3;
	truncate stores.productlines_4;
	truncate stores.productlines_5;
	truncate stores.products_1;
	truncate stores.products_2;
	truncate stores.products_3;
	truncate stores.products_4;
	truncate stores.products_5;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/customers_1.csv'
	INTO TABLE stores.customers_1
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/customers_2.csv'
        INTO TABLE stores.customers_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/customers_3.csv'
        INTO TABLE stores.customers_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/customers_4.csv'
        INTO TABLE stores.customers_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/customers_5.csv'
        INTO TABLE stores.customers_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/employees_1.csv'
        INTO TABLE stores.employees_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/employees_2.csv'
        INTO TABLE stores.employees_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/employees_3.csv'
        INTO TABLE stores.employees_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/employees_4.csv'
        INTO TABLE stores.employees_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/employees_5.csv'
        INTO TABLE stores.employees_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/offices_1.csv'
        INTO TABLE stores.offices_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/offices_2.csv'
        INTO TABLE stores.offices_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/offices_3.csv'
        INTO TABLE stores.offices_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/offices_4.csv'
        INTO TABLE stores.offices_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/offices_5.csv'
        INTO TABLE stores.offices_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/products_1.csv'
        INTO TABLE stores.products_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/products_2.csv'
        INTO TABLE stores.products_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/products_3.csv'
        INTO TABLE stores.products_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/products_4.csv'
        INTO TABLE stores.products_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/products_5.csv'
        INTO TABLE stores.products_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/productlines_1.csv'
        INTO TABLE stores.productlines_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/productlines_2.csv'
        INTO TABLE stores.productlines_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/productlines_3.csv'
        INTO TABLE stores.productlines_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/productlines_4.csv'
        INTO TABLE stores.productlines_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/Task1/productlines_5.csv'
        INTO TABLE stores.productlines_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
update stores.customers_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.customers_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.customers_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.customers_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.customers_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.employees_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.employees_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.employees_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.employees_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.employees_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.offices_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.offices_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.offices_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.offices_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.offices_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.products_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.products_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.products_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.products_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.products_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.productlines_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.productlines_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.productlines_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.productlines_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.productlines_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);	
start
sh ./r.sh
mysql -u root -pPreethi123 << eof
   UPDATE etl_metadata.batch_control
   SET etl_batch_no = etl_batch_no + 1,
       etl_batch_date = ADDdate(etl_batch_date,INTERVAL 1 DAY);
eof
done
