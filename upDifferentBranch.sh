#! /bin/bash

function pushThis () {
	git add .
	echo "What will be the message?"
	read -e message
	git commit -m "$message"
	echo "Are you sure you wanna push? (y/n)"
	read -e yn
	if [ "$yn" = y ] || [ "$yn" = Y ]; then
		current=$(git branch | grep "*" | cut -b 3-)
		echo "The current branch is $current, Do you want to push to a different branch? (y/n)"
		read -e yn
		if [ "$yn" = y ] || [ "$yn" = Y ]; then
			echo "Write the name of the branch:"
			read -e branch
  			git push origin "$branch"
		else
  			git push
  		fi
	else
  		echo "See you!"
	fi
}

pushThis $1
