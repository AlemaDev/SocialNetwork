#! /bin/bash

function pushThis () {
	git add .
	echo "What will be the message?"
	read -e message
	git commit -m "$message"
	echo "Are you sure you wanna push? (y/n)"
	read -e yn
	if [ "$yn" = y ] || [ "$yn" = Y ]; then
  		git push
	else
  		echo "See you!"
	fi
}

pushThis $1
