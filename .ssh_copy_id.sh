#!/usr/bin/expect -f
set timeout 3
set ip [lindex $argv 0];
spawn ssh-copy-id "$ip"
expect "no\)\?"
send "yes\r"
expect "password:"
send "contrail123\r"
interact
