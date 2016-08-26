#!/bin/bash

for project in $HOME/workspace/Projects/*
do
	if [ -d $project ]
	then
		echo "Updating project: "$(echo $project | rev | cut -d'/' -f1 | rev)
		cd $project
		git pull
	fi
done
