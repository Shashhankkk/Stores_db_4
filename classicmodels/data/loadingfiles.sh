#!/bin/bash
#copying all files from source to processing
cd ~/source
chmod 777 ~/source/*
for file in *;
do
       cp $file ~/processing
       echo $file
done       
cd ~/processing

for FILE in *;
do
	temp= $(echo $FILE| sed 's/[^0-9]*//g')
sh ./stage.sh

	if [[ $FILE == "customers"* ]];
        then 
	
          mysql -u root -pPreethi123 << eof
                LOAD DATA LOCAL INFILE '$FILE'
	        INTO TABLE stage.customers
		        FIELDS TERMINATED BY ','
			        ENCLOSED BY '"'
				        LINES TERMINATED BY '\n';
update stage.customers set store_num=$temp,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP; 

eof
elif [[ $FILE == "employees"* ]];
then
    mysql -u root -pPreethi123 << eof
     LOAD DATA LOCAL INFILE '$FILE'
     INTO TABLE stage.employees
     FIELDS TERMINATED BY ','
     ENCLOSED BY '"'
     LINES TERMINATED BY '\n';
update stage.employees set store_num=$temp,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP;
eof
elif [[ $FILE == "offices"* ]];
then

mysql -u root -pPreethi123 << eof
                LOCAL DATA LOCAL INFILE '$FILE'
                INTO TABLE stage.offices
                       FIELDS TERMINATED BY ','
                               ENCLOSED BY '"'
                                        LINES TERMINATED BY '\n';
update stage.offices set store_num=$temp ,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP;
eof
elif [[ $FILE == "orders"* ]];
then
mysql -u root -pPreethi123 << eof
LOCAL DATA LOCAL INFILE '$FILE'
INTO TABLE stage.orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.orders set store_num=$temp,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP;
eof
elif [[ $FILE == "orderdetails"* ]];
then
mysql -u root -pPreethi123 << eof

LOCAL DATA LOCAL INFILE '$FILE'
INTO TABLE stage.orderdetails
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.orderdetails set store_num=$temp,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP;
eof


elif [[ $FILE == "payments"* ]];
then
mysql -u root -pPreethi123 << eof
LOCAL DATA LOCAL INFILE '$FILE'
INTO TABLE stage.payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.payments set store_num=$temp,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP;
eof

elif [[ $FILE == "products"* ]];
then
mysql -u root -pPreethi123 << eof
LOCAL DATA LOCAL INFILE '$FILE'
INTO TABLE stage.products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.products set store_num=$temp,create_ts= CURRENT_TIMESTAMP,update_ts= CURRENT_TIMESTAMP;
eof

elif [[$FILE == "productlines"* ]];
then
mysql -u root -pPreethi123 << eof
LOCAL DATA LOCAL INFILE '$FILE'
INTO TABLE stage.productlines
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
update stage.productlines set store_num=$temp,create_ts= CURRENT_TIMESTAMP, update_ts= CURRENT_TIMESTAMP;
eof

fi
done





