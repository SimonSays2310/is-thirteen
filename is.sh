#!/usr/bin/env bash

isfatal () {
	echo "FATAL: $*"
	exit 1
}

is () {
	if [[ $2 == "thirteen" ]]; then
		if [[ $1 -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "roughly_thirteen" ]]; then
		result=$(printf "%.0f" $1)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "yearofbirth" ]]; then
		year=$(date +%Y)
		result=$(echo "$year - $1" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "plus" ]] && [[ $4 == thirteen ]]; then
		result=$(echo "$1 + $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "minus" ]] && [[ $4 == thirteen ]]; then
		result=$(echo "$1 - $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "times" ]] && [[ $4 == thirteen ]]; then
		result=$(echo "$1 * $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "dividedby" ]] && [[ $4 == "thirteen" ]]; then
		result=$(echo "$1 / $3" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
}
