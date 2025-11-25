#!/bin/sh
echo -n "Please enter your gitHub username: "
read -s username
echo
echo -n "Please enter your TOKEN: "
read -s token
echo
USERNAME=$username
TOKEN=$token

#curl -L -u "${USERNAME}:${TOKEN}" https://api.github.com/users/$username/repos | jq -r '.[] .full_name'
curl -L -u "${USERNAME}:${TOKEN}" https://api.github.com/user/repos | jq -r '.[] .full_name'
