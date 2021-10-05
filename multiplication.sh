#!/bin/sh

if [ $# -ne 2 ]
then
	exit 1
fi

for i in "$@"
do 
	case "${i#[-+]}" in
		*[!0-9]* | ''| 0)
			echo "not negative integer"
			exit 1;;
	esac
done

for i in `seq 1 $1`
do
	for j in `seq 1 $2`
	do
		result=`expr $i \* $j`
		echo -n "${i}*${j}=${result} "
	done
echo ""
done


exit 0

		
