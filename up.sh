#! /bin/bash

function pushThis () {
	git add .
	echo "What will be the message?"
	read -e message
	git commit -m "$message"
  	git push
}

pushThis $1
