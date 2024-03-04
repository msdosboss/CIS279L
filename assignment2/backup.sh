i=0

if test -f "/home/orcalord/Documents/CIS279L/backup.tar"; then
    myArray=($(find /home/orcalord/Documents/CIS279L -mtime -1))
    tlen=${#myArray[@]}
    echo "\" $tlen \""
    for (( i=0; i<${tlen}; i++ ));
    do
        tar rf backup.tar "${myArray[i]}"
    done
else
    echo "it failed"
    tar cf backup.tar /home/orcalord/Documents/CIS279L	
fi


tar -cvzf backup.tar.gz backup.tar
