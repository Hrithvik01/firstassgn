add_user(){
    echo 'input new user name here'
    read x
    sudo useradd $x
    sudo passwd $x
    su - $x
    

}

add_group(){
    echo 'input new group name here'
    read x
    sudo groupadd $x
    echo 'adding for'
    $z
    sudo usermod -a -G $x $USER
    echo "This group is successfully added to $USER"
    groups $USER
}
sys_info(){
echo  " HOSTNAME INFORMATION "
hostnamectl
echo ""
echo  "FILE SYSTEM DISK SPACE USAGE "
df -h
echo ""
echo  "FREE AND USED MEMORY"
free
echo ""
echo  "SYSTEM UPTIME AND LOAD"
uptime
echo ""
echo  "CURRENTLY LOGGED-IN USERS "
who
echo ""
echo  "TOP 5 MEMORY-CONSUMING PROCESSES "
ps -eo  %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""
echo "Done"
}
addsomeone(){
echo 'click 1 for adding a user, 2 for adding a group, 3 to check system info'
echo 'input here'
read x
if [ $x == '1' ]
then
add_user
elif [ $x == 2 ]
then
add_group
else [ $x == 3 ]
sys_info
fi
}

addsomeone

