#/bin/bash
#echo -n "login:"
#read name
#echo -n "password:"
#read passwd
#if [ $name = "ximingren" -a $passwd = '923162' ];then
#	echo "the host and password is right"
#else echo "input is error!"
#fi

#echo "please enter tow number"
#read a
#read b
#if [ $a -eq $b ]
#then echo "$a=$b"
#else echo "$a!=$b"
#fi
cd ~
for dic in *
do 
	echo $dic
	if test -d $dic
	then
		echo $dic
		cd $dic
		for filename in `ls`
		do
			if test -d $filename
			then b=0
			else 
				a=$(ls -l "$filename" |awk '{print $5 }')
				if test $a -eq 0
				then mv $filename -t ~/.local/share/Trash/files --backup=t
				echo $filename
				fi
			fi
		done
		cd ..
	fi
done
