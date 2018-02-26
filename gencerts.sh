#!/bin/bash

function checkCertBot() {
  # check that certbot is installed
  if hash certbot 2>/dev/null;
    then
      printf "certbot has been located\n";
      sudo certbot certonly --standalone \
        -d 'example.com' \
        -d 'www.example.com' \
        -d 'www2.example.com' \
        -d 'someother.sub.com'
    else
      printf "goto https://certbot.eff.org\n"
      exit
  fi
}
checkCertBot
