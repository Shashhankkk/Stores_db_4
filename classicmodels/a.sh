sh ./database.sh
cd data
sed -i 1d CUSTOMERS20050609.csv
sed -i 1d CUSTOMERS20050610.csv
sed -i 1d CUSTOMERS20050611.csv
sed -i 1d CUSTOMERS20050612.csv
sed -i 1d CUSTOMERS20050613.csv
sed -i 1d CUSTOMERS20050614.csv
sed -i 1d EMPLOYEES20050609.csv
sed -i 1d EMPLOYEES20050610.csv
sed -i 1d EMPLOYEES20050611.csv
sed -i 1d EMPLOYEES20050612.csv
sed -i 1d EMPLOYEES20050613.csv
sed -i 1d EMPLOYEES20050614.csv
sed -i 1d OFFICES20050609.csv
sed -i 1d OFFICES20050610.csv
sed -i 1d OFFICES20050611.csv
sed -i 1d OFFICES20050612.csv
sed -i 1d OFFICES20050613.csv
sed -i 1d OFFICES20050614.csv
sed -i 1d PRODUCTLINES20050609.csv
sed -i 1d PRODUCTLINES20050610.csv
sed -i 1d PRODUCTLINES20050611.csv
sed -i 1d PRODUCTLINES20050612.csv
sed -i 1d PRODUCTLINES20050613.csv
sed -i 1d PRODUCTLINES20050614.csv
sed -i 1d PRODUCTS20050609.csv
sed -i 1d PRODUCTS20050610.csv
sed -i 1d PRODUCTS20050611.csv
sed -i 1d PRODUCTS20050612.csv
sed -i 1d PRODUCTS20050613.csv
sed -i 1d PRODUCTS20050614.csv
sed -i 1d ORDERS20050609.csv
sed -i 1d ORDERS20050610.csv
sed -i 1d ORDERS20050611.csv
sed -i 1d ORDERS20050612.csv
sed -i 1d ORDERS20050613.csv
sed -i 1d ORDERS20050614.csv
sed -i 1d ORDERDETAILS20050609.csv
sed -i 1d ORDERDETAILS20050610.csv
sed -i 1d ORDERDETAILS20050611.csv
sed -i 1d ORDERDETAILS20050612.csv
sed -i 1d ORDERDETAILS20050613.csv
sed -i 1d ORDERDETAILS20050614.csv
sed -i 1d PAYMENTS20050609.csv
sed -i 1d PAYMENTS20050610.csv
sed -i 1d PAYMENTS20050611.csv
sed -i 1d PAYMENTS20050612.csv
sed -i 1d PAYMENTS20050613.csv
sed -i 1d PAYMENTS20050614.csv
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
			shuf -n 15 ORDERS20050609.csv>orders_$j.csv
			shuf -n 50 ORDERDETAILS20050609.csv>orderdetails_$j.csv
			shuf -n 10 PAYMENTS20050609.csv>payments_$j.csv
		elif [ $db==20050610 ]; then
			shuf -n 10 CUSTOMERS20050610.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050610.csv>employees_$j.csv
			shuf -n 5 OFFICES20050610.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050610.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050610.csv>products_$j.csv
			shuf -n 15 ORDERS20050610.csv>orders_$j.csv
			shuf -n 50 ORDERDETAILS20050610.csv>orderdetails_$j.csv
			shuf -n 10 PAYMENTS20050610.csv>payments_$j.csv
		elif [ $db==20050611 ]; then
			shuf -n 10 CUSTOMERS20050611.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050611.csv>employees_$j.csv
			shuf -n 5 OFFICES20050611.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050611.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050611.csv>products_$j.csv
			shuf -n 15 ORDERS20050611.csv>orders_$j.csv
			shuf -n 50 ORDERDETAILS20050611.csv>orderdetails_$j.csv
			shuf -n 10 PAYMENTS20050611.csv>payments_$j.csv
		elif [ $db==20050612 ]; then
			shuf -n 10 CUSTOMERS20050612.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050612.csv>employees_$j.csv
			shuf -n 5 OFFICES20050612.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050612.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050612.csv>products_$j.csv
			shuf -n 15 ORDERS20050612.csv>orders_$j.csv
			shuf -n 50 ORDERDETAILS20050612.csv>orderdetails_$j.csv
			shuf -n 10 PAYMENTS20050612.csv>payments_$j.csv
		elif [ $db==20050613 ]; then
			shuf -n 10 CUSTOMERS20050613.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050613.csv>employees_$j.csv
			shuf -n 5 OFFICES20050613.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050613.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050613.csv>products_$j.csv
			shuf -n 15 ORDERS20050613.csv>orders_$j.csv
			shuf -n 50 ORDERDETAILS20050613.csv>orderdetails_$j.csv
			shuf -n 10 PAYMENTS20050613.csv>payments_$j.csv
		elif [ $db==20050614 ]; then
			shuf -n 10 CUSTOMERS20050614.csv>customers_$j.csv
			shuf -n 5 EMPLOYEES20050614.csv>employees_$j.csv
			shuf -n 5 OFFICES20050614.csv>offices_$j.csv
			shuf -n 5 PRODUCTLINES20050614.csv>productlines_$j.csv
			shuf -n 10 PRODUCTS20050614.csv>products_$j.csv
			shuf -n 15 ORDERS20050614.csv>orders_$j.csv
			shuf -n 50 ORDERDETAILS20050614.csv>orderdetails_$j.csv
			shuf -n 10 PAYMENTS20050614.csv>payments_$j.csv
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
        truncate stores.orders_1;
        truncate stores.orders_2;
        truncate stores.orders_3;
        truncate stores.orders_4;
        truncate stores.orders_5;
        truncate stores.orderdetails_1;
        truncate stores.orderdetails_2;
        truncate stores.orderdetails_3;
        truncate stores.orderdetails_4;
        truncate stores.orderdetails_5;
        truncate stores.payments_1;
        truncate stores.payments_2;
        truncate stores.payments_3;
        truncate stores.payments_4;
        truncate stores.payments_5;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/customers_1.csv'
	INTO TABLE stores.customers_1
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/customers_2.csv'
        INTO TABLE stores.customers_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/customers_3.csv'
        INTO TABLE stores.customers_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/customers_4.csv'
        INTO TABLE stores.customers_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/customers_5.csv'
        INTO TABLE stores.customers_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/employees_1.csv'
        INTO TABLE stores.employees_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/employees_2.csv'
        INTO TABLE stores.employees_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/employees_3.csv'
        INTO TABLE stores.employees_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/employees_4.csv'
        INTO TABLE stores.employees_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/employees_5.csv'
        INTO TABLE stores.employees_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/offices_1.csv'
        INTO TABLE stores.offices_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/offices_2.csv'
        INTO TABLE stores.offices_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/offices_3.csv'
        INTO TABLE stores.offices_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/offices_4.csv'
        INTO TABLE stores.offices_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/offices_5.csv'
        INTO TABLE stores.offices_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/products_1.csv'
        INTO TABLE stores.products_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/products_2.csv'
        INTO TABLE stores.products_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/products_3.csv'
        INTO TABLE stores.products_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/products_4.csv'
        INTO TABLE stores.products_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/products_5.csv'
        INTO TABLE stores.products_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/productlines_1.csv'
        INTO TABLE stores.productlines_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/productlines_2.csv'
        INTO TABLE stores.productlines_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/productlines_3.csv'
        INTO TABLE stores.productlines_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/productlines_4.csv'
        INTO TABLE stores.productlines_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
	LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/productlines_5.csv'
        INTO TABLE stores.productlines_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
        LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orders_1.csv'
        INTO TABLE stores.orders_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orders_2.csv'
        INTO TABLE stores.orders_2
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;

LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orders_3.csv'
        INTO TABLE stores.orders_3
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;

LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orders_4.csv'
        INTO TABLE stores.orders_4
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;

LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orders_5.csv'
        INTO TABLE stores.orders_5
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orderdetails_1.csv'
        INTO TABLE stores.orderdetails_1
        FIELDS TERMINATED BY ','
        ENCLOSED BY '"'
        LINES TERMINATED BY '\n'
        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orderdetails_2.csv'
        INTO TABLE stores.orderdetails_2
        FIELDS TERMINATED BY ','
	        ENCLOSED BY '"'
		        LINES TERMINATED BY '\n'
        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orderdetails_3.csv'
        INTO TABLE stores.orderdetails_3
        FIELDS TERMINATED BY ','
	        ENCLOSED BY '"'
		        LINES TERMINATED BY '\n'
			        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orderdetails_4.csv'
				        INTO TABLE stores.orderdetails_4
					        FIELDS TERMINATED BY ','
						        ENCLOSED BY '"'
							        LINES TERMINATED BY '\n'
								        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/orderdetails_5.csv'
									        INTO TABLE stores.orderdetails_5
										        FIELDS TERMINATED BY ','
											        ENCLOSED BY '"'
												        LINES TERMINATED BY '\n'
													        ;
LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/payments_1.csv'
														        INTO TABLE stores.payments_1
															        FIELDS TERMINATED BY ','
																        ENCLOSED BY '"'
																	        LINES TERMINATED BY '\n'
																		        ;
															LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/payments_2.csv'
			 															        INTO TABLE stores.payments_2
																				        FIELDS TERMINATED BY ','
																					        ENCLOSED BY '"'
																						        LINES TERMINATED BY '\n'
																							        ;
															LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/payments_3.csv'
																								        INTO TABLE stores.payments_3
																									        FIELDS TERMINATED BY ','
																										        ENCLOSED BY '"'
																											        LINES TERMINATED BY '\n'
																												        ;
															LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/payments_4.csv'
																													        INTO TABLE stores.payments_4
																														        FIELDS TERMINATED BY ','
																															        ENCLOSED BY '"'
																																        LINES TERMINATED BY '\n'
																																	        ;
																														LOAD DATA LOCAL INFILE '/home/ec2-user/classicmodels/data/payments_5.csv'
																																		        INTO TABLE stores.payments_5
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
update stores.orders_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orders_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orders_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orders_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orders_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orderdetails_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orderdetails_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orderdetails_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orderdetails_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.orderdetails_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.payments_1 set store_num=1,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.payments_2 set store_num=2,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.payments_3 set store_num=3,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.payments_4 set store_num=4,date=(select etl_batch_date from etl_metadata.batch_control);
update stores.payments_5 set store_num=5,date=(select etl_batch_date from etl_metadata.batch_control);
start
cp /home/ec2-user/classicmodels/r.sh /home/ec2-user/classicmodels/data
sh ./r.sh

mysql -u root -pPreethi123 << eof
   UPDATE etl_metadata.batch_control
   SET etl_batch_no = etl_batch_no + 1,
       etl_batch_date = ADDdate(etl_batch_date,INTERVAL 1 DAY);
eof
done
cd ..

