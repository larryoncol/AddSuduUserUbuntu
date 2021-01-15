#!/bin/bash

echo Enter username of account

read username

echo Creating User
adduser $username
echo User created

echo adding user to wheel Group
usermod -aG sudo $username
echo User added to wheel Group

echo Test by swithcing to new account
su - $username

echo Use sudo command to list content of root
sudo ls -la /root
echo All good account created



