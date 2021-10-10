cd source
for file in *;
do
	echo $file
	store_num=`echo "$file" | awk -F'[_.]' '{print $2}'`
	echo $store_num
done
