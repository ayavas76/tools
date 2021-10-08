#!/bin/bash

#Declare a string array
val2=0

zonesarray=$(cat $1 |tr "\n" " ")

# Print array values in  lines
echo "Print every element in new line"
for val1 in ${zonesarray[*]}; do
    val2=$( cat $2 | grep $val1 | wc -l )

        if ([ "$3" = "excludezero" ] && [ "$val2" -ne 0 ]) || [ "$3" != "excludezero" ] ;
        then
                echo $val1 " has "  $val2 "queries."
        fi
done

exit
