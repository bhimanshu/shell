#!/usr/bin/expect -f
#usage ./ssh_copy_id.sh user_name@IP... eg ./ssh_copy_id.sh root@10.0.0.50
#Also make sure expect is installed. you may use apt-get install python-pip and then pip install expect on ubuntu systems
#which expect should output the path 
set timeout 3
set ip [lindex $argv 0];
spawn ssh-copy-id "$ip"
expect "no\)\?"
send "yes\r"
expect "password:"
send "contrail123\r"
interact
