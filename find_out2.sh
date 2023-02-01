exec=0
non_exec=0
read $doss
for i in `ls $doss`

do
	if [ -x $i ]
	then
	let "exec+=1"
	echo $i >>list_exec.txt

	else
	
	let "non_exec+=1"
	echo $i >>list_non_exec.txt
	
fi

done

