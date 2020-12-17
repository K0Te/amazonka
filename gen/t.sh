#for f in config/*
#do
#	x=$(echo $f | sed 's/.json//' | sed 's/config\///')
#	if [ -d "./model/${x}" ]
#		then echo "Exists $x"
#		else echo "no $x"
#	fi
#done
for f in model/*
do
	x=$(echo $f | sed 's/model\///')
	if [ -f "./config/${x}.json" ]
		then echo "Exists $x"
		else echo "mssing $f"
	fi
done
