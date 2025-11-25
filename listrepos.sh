#!/bin/sh
echo -n "Please enter your gitHub username: "
read -s username
echo
echo -n "Please enter your TOKEN: "
read -s token
echo
echo "1 - name"
echo "2 - full_name"
echo "3 - clone_url"
echo "4 - ssh_url"
echo "5 - html_url"
echo
read -p "Please choose option: " option
case "$option" in
  1) key="name" ;;
  2) key="full_name" ;;
  3) key="clone_url" ;;
  4) key="ssh_url" ;;
  5) key="html_url" ;;
  *)
     echo "Wrong option"
     exit 1
     ;;
esac

USERNAME=$username
TOKEN=$token

#curl -L -u "${USERNAME}:${TOKEN}" https://api.github.com/users/$username/repos | jq -r '.[] .full_name'
curl -L -u "${USERNAME}:${TOKEN}" https://api.github.com/user/repos | jq -r  --arg key "$key" '.[][$key]'
