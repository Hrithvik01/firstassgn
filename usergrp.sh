addsomeone(){
echo 'input here'
read x
if [ $x == '1' ]
then
add_user
else [ $x == 2 ]
add_group
fi
}
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
addsomeone


