db= shuf -i 20050609-20050614 -n 1
. oraenv
if [ $db==20050609 ]; then
	echo $db
	sqlplus preetham/preetham123@//54.224.209.13:1521/xe<< start
ALTER SESSION SET current_schema=CM_20050609;

set pagesize 0

spool /home/ec2-user/cust.csv

select customernumber||','||customername||','||contactlastname||','||contactfirstname||','||phone||','||addressline1||','||addressline2||','||city||','||state||','||postalcode||','||country||','||salesrepemployeenumber||','||creditlimit||','||'2005-06-09'||','||1 from customers;

spool /home/ec2-user/emp.csv

select employeenumber||','||lastname||','||firstname||','||extension||','||email||','||officecode||','||reportsto||','||jobtitle||','||'2005-06-09'||','||1 from employees;

spool /home/ec2-user/off.csv

select officecode||','||city||','||phone||','||addressline1||','||addressline2||','||state||','||country||','||postalcode||','||territory||','||'2005-06-09'||','||1 from offices;

spool /home/ec2-user/pl.csv

select productline||','||textdescription||','||htmldescription||','||image||','||'2005-06-09'||','||1 from productlines;

spool /home/ec2-user/prod.csv

select productcode||','||productname||','||productline||','||productscale||','||productvendor||','||productdescription||','||quantityinstock||','||buyprice||','||msrp||','||'2005-06-09'||','||1 from products;

spool /home/ec2-user/pay.csv

select customernumber||','||checknumber||','||paymentdate||','||amount||','||'2005-06-09'||','||1 from payments;

spool /home/ec2-user/ord.csv

select ordernumber||','||orderdate||','||requireddate||','||shippeddate||','||status||','||comments||','||customernumber||','||'2005-06-09'||','||1 from orders;

spool /home/ec2-user/od.csv

select ordernumber||','||productcode||','||quantityordered||','||priceeach||','||'2005-06-09'||','||1 from orderdetails;

spool off
start
elif [ $db==20050610 ]; then
	echo $db
	sqlplus preetham/preetham123@//54.224.209.13:1521/xe<< start
ALTER SESSION SET current_schema=CM_20050610;

set pagesize 0

spool /home/ec2-user/cust.csv

select customernumber||','||customername||','||contactlastname||','||contactfirstname||','||phone||','||addressline1||','||addressline2||','||city||','||state||','||postalcode||','||country||','||salesrepemployeenumber||','||creditlimit||','||'2005-06-09'||','||1 from customers;

spool /home/ec2-user/emp.csv

select employeenumber||','||lastname||','||firstname||','||extension||','||email||','||officecode||','||reportsto||','||jobtitle||','||'2005-06-09'||','||1 from employees;

spool /home/ec2-user/off.csv

select officecode||','||city||','||phone||','||addressline1||','||addressline2||','||state||','||country||','||postalcode||','||territory||','||'2005-06-09'||','||1 from offices;

spool /home/ec2-user/pl.csv

select productline||','||textdescription||','||htmldescription||','||image||','||'2005-06-09'||','||1 from productlines;

spool /home/ec2-user/prod.csv

select productcode||','||productname||','||productline||','||productscale||','||productvendor||','||productdescription||','||quantityinstock||','||buyprice||','||msrp||','||'2005-06-09'||','||1 from products;

spool /home/ec2-user/pay.csv

select customernumber||','||checknumber||','||paymentdate||','||amount||','||'2005-06-09'||','||1 from payments;

spool /home/ec2-user/ord.csv

select ordernumber||','||orderdate||','||requireddate||','||shippeddate||','||status||','||comments||','||customernumber||','||'2005-06-09'||','||1 from orders;

spool /home/ec2-user/od.csv

select ordernumber||','||productcode||','||quantityordered||','||priceeach||','||'2005-06-09'||','||1 from orderdetails;
spool off
start
elif [ $db==20050611 ]; then
	echo $db
	sqlplus preetham/preetham123@//54.224.209.13:1521/xe<< start
ALTER SESSION SET current_schema=CM_20050611;

set pagesize 0

spool /home/ec2-user/cust.csv

select customernumber||','||customername||','||contactlastname||','||contactfirstname||','||phone||','||addressline1||','||addressline2||','||city||','||state||','||postalcode||','||country||','||salesrepemployeenumber||','||creditlimit||','||'2005-06-09'||','||1 from customers;

spool /home/ec2-user/emp.csv

select employeenumber||','||lastname||','||firstname||','||extension||','||email||','||officecode||','||reportsto||','||jobtitle||','||'2005-06-09'||','||1 from employees;

spool /home/ec2-user/off.csv

select officecode||','||city||','||phone||','||addressline1||','||addressline2||','||state||','||country||','||postalcode||','||territory||','||'2005-06-09'||','||1 from offices;

spool /home/ec2-user/pl.csv

select productline||','||textdescription||','||htmldescription||','||image||','||'2005-06-09'||','||1 from productlines;

spool /home/ec2-user/prod.csv

select productcode||','||productname||','||productline||','||productscale||','||productvendor||','||productdescription||','||quantityinstock||','||buyprice||','||msrp||','||'2005-06-09'||','||1 from products;

spool /home/ec2-user/pay.csv

select customernumber||','||checknumber||','||paymentdate||','||amount||','||'2005-06-09'||','||1 from payments;

spool /home/ec2-user/ord.csv

select ordernumber||','||orderdate||','||requireddate||','||shippeddate||','||status||','||comments||','||customernumber||','||'2005-06-09'||','||1 from orders;

spool /home/ec2-user/od.csv

select ordernumber||','||productcode||','||quantityordered||','||priceeach||','||'2005-06-09'||','||1 from orderdetails;

spool off
start
elif [ $db==20050612 ]; then
	echo $db
	sqlplus preetham/preetham123@//54.224.209.13:1521/xe<< start
ALTER SESSION SET current_schema=CM_20050612;

set pagesize 0

spool /home/ec2-user/cust.csv

select customernumber||','||customername||','||contactlastname||','||contactfirstname||','||phone||','||addressline1||','||addressline2||','||city||','||state||','||postalcode||','||country||','||salesrepemployeenumber||','||creditlimit||','||'2005-06-09'||','||1 from customers;

spool /home/ec2-user/emp.csv

select employeenumber||','||lastname||','||firstname||','||extension||','||email||','||officecode||','||reportsto||','||jobtitle||','||'2005-06-09'||','||1 from employees;

spool /home/ec2-user/off.csv

select officecode||','||city||','||phone||','||addressline1||','||addressline2||','||state||','||country||','||postalcode||','||territory||','||'2005-06-09'||','||1 from offices;

spool /home/ec2-user/pl.csv

select productline||','||textdescription||','||htmldescription||','||image||','||'2005-06-09'||','||1 from productlines;

spool /home/ec2-user/prod.csv

select productcode||','||productname||','||productline||','||productscale||','||productvendor||','||productdescription||','||quantityinstock||','||buyprice||','||msrp||','||'2005-06-09'||','||1 from products;

spool /home/ec2-user/pay.csv

select customernumber||','||checknumber||','||paymentdate||','||amount||','||'2005-06-09'||','||1 from payments;

spool /home/ec2-user/ord.csv

select ordernumber||','||orderdate||','||requireddate||','||shippeddate||','||status||','||comments||','||customernumber||','||'2005-06-09'||','||1 from orders;

spool /home/ec2-user/od.csv

select ordernumber||','||productcode||','||quantityordered||','||priceeach||','||'2005-06-09'||','||1 from orderdetails;

spool off
start
elif [ $db==20050613 ]; then
	echo $db
	sqlplus preetham/preetham123@//54.224.209.13:1521/xe<< start
ALTER SESSION SET current_schema=CM_20050613;
set pagesize 0

spool /home/ec2-user/cust.csv

select customernumber||','||customername||','||contactlastname||','||contactfirstname||','||phone||','||addressline1||','||addressline2||','||city||','||state||','||postalcode||','||country||','||salesrepemployeenumber||','||creditlimit||','||'2005-06-09'||','||1 from customers;

spool /home/ec2-user/emp.csv

select employeenumber||','||lastname||','||firstname||','||extension||','||email||','||officecode||','||reportsto||','||jobtitle||','||'2005-06-09'||','||1 from employees;

spool /home/ec2-user/off.csv

select officecode||','||city||','||phone||','||addressline1||','||addressline2||','||state||','||country||','||postalcode||','||territory||','||'2005-06-09'||','||1 from offices;

spool /home/ec2-user/pl.csv

select productline||','||textdescription||','||htmldescription||','||image||','||'2005-06-09'||','||1 from productlines;

spool /home/ec2-user/prod.csv

select productcode||','||productname||','||productline||','||productscale||','||productvendor||','||productdescription||','||quantityinstock||','||buyprice||','||msrp||','||'2005-06-09'||','||1 from products;

spool /home/ec2-user/pay.csv

select customernumber||','||checknumber||','||paymentdate||','||amount||','||'2005-06-09'||','||1 from payments;

spool /home/ec2-user/ord.csv

select ordernumber||','||orderdate||','||requireddate||','||shippeddate||','||status||','||comments||','||customernumber||','||'2005-06-09'||','||1 from orders;

spool /home/ec2-user/od.csv

select ordernumber||','||productcode||','||quantityordered||','||priceeach||','||'2005-06-09'||','||1 from orderdetails;

spool off
start
elif [ $db==20050614 ]; then
	echo $db
	sqlplus preetham/preetham123@//54.224.209.13:1521/xe<< start
ALTER SESSION SET current_schema=CM_20050614;

set pagesize 0

spool /home/ec2-user/cust.csv

select customernumber||','||customername||','||contactlastname||','||contactfirstname||','||phone||','||addressline1||','||addressline2||','||city||','||state||','||postalcode||','||country||','||salesrepemployeenumber||','||creditlimit||','||'2005-06-09'||','||1 from customers;

spool /home/ec2-user/emp.csv

select employeenumber||','||lastname||','||firstname||','||extension||','||email||','||officecode||','||reportsto||','||jobtitle||','||'2005-06-09'||','||1 from employees;

spool /home/ec2-user/off.csv

select officecode||','||city||','||phone||','||addressline1||','||addressline2||','||state||','||country||','||postalcode||','||territory||','||'2005-06-09'||','||1 from offices;

spool /home/ec2-user/pl.csv

select productline||','||textdescription||','||htmldescription||','||image||','||'2005-06-09'||','||1 from productlines;

spool /home/ec2-user/prod.csv

select productcode||','||productname||','||productline||','||productscale||','||productvendor||','||productdescription||','||quantityinstock||','||buyprice||','||msrp||','||'2005-06-09'||','||1 from products;

spool /home/ec2-user/pay.csv

select customernumber||','||checknumber||','||paymentdate||','||amount||','||'2005-06-09'||','||1 from payments;

spool /home/ec2-user/ord.csv

select ordernumber||','||orderdate||','||requireddate||','||shippeddate||','||status||','||comments||','||customernumber||','||'2005-06-09'||','||1 from orders;

spool /home/ec2-user/od.csv

select ordernumber||','||productcode||','||quantityordered||','||priceeach||','||'2005-06-09'||','||1 from orderdetails;

spool off
start
fi
