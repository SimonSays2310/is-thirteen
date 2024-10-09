#!/usr/bin/env bash

isfatal () {
	echo "FATAL: $*"
	exit 1
}

is () {
	if [[ $2 == "thirteen" ]]; then
		if [ -z $1 ]; then
			isfatal "Number is missing!"
		fi
		if [[ $1 -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "roughly_thirteen" ]]; then
		if [ -z $1 ]; then
			isfatal "Number is missing!"
		fi
		result=$(printf "%.0f" $1)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "yearofbirth" ]]; then
		if [ -z $1 ]; then
			isfatal "Number is missing!"
		fi
		year=$(date +%Y)
		result=$(echo "$year - $1" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "plus" ]] && [[ $4 == thirteen ]]; then
		if [ -z $1 ]; then
			isfatal "Number/numbers are missing!"
		fi
		result=$(echo "$1 + $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "minus" ]] && [[ $4 == thirteen ]]; then
		if [ -z $1 ]; then
			isfatal "Number/numbers are missing!"
		fi
		result=$(echo "$1 - $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "times" ]] && [[ $4 == thirteen ]]; then
		if [ -z $1 ]; then
			isfatal "Number/numbers are missing!"
		fi
		result=$(echo "$1 * $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "dividedby" ]] && [[ $4 == "thirteen" ]]; then
		if [ -z $1 ]; then
			isfatal "Number/numbers are missing!"
		fi
		result=$(echo "$1 / $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
}
