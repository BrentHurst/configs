file="$HOME/.bashrc.local"

grep "OLDPWD=" $file > /dev/null 2> /dev/null

if [ $? -ne 0 ]
then
	echo "export OLDPWD=\"hello\"" >> $file
fi

d=$(pwd)
sed -i "s:OLDPWD=.*:OLDPWD=\"$d\":" $file
