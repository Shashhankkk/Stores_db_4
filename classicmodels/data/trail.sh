name='someletters_1.ext'
t=$(echo $name | sed 's/[^0-9]*//g')
echo $t
