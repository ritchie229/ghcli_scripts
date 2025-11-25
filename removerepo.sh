#!/bin/sh
echo -n "Please enter your gitHub username: "
read -s username
echo
echo -n "Please enter your TOKEN: "
read -s token
echo
USERNAME=$username
TOKEN=$token


read -p "Enter repo name: " repo

rm -rf ./$repo

curl -X DELETE -u "${USERNAME}:${TOKEN}" https://api.github.com/repos/$USERNAME/$repo

