cd ~/source
for file in *;
do
	       cp $file ~/processing
	      done
	      cd ~/processing

	      for FILE in *;
	      do
		      sh ./stage.sh

		              if [[ $FILE == "customers"* ]]; then
   				 temp=$(echo $FILE| sed 's/[^0-9]*//g')
								                mysql -u root -pPreethi123 << eof
               SET GLOBAL local_infile=1;
                LOAD DATA LOCAL INFILE '$FILE'
                INTO TABLE stage.customers
                     CHARACTER SET latin1
                        FIELDS TERMINATED BY ','
                                ENCLOSED BY '"'
                                        LINES TERMINATED BY '\n'
                                        IGNORE 1 ROWS;
   alter table stage.customers add store_num INT ,add create_ts TIMESTAMP ,add update_ts TIMESTAMP;
update stage.customers set store_num=${temp} ,create_ts= CURRENT_TIMESTAMP, update_ts = CURRENT_TIMESTAMP;
eof
fi
done
