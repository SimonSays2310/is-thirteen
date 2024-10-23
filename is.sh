#!/usr/bin/env bash
# shellcheck disable=SC2071,SC2086

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
		if [[ $(printf "%.0f" $1) -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "yearofbirth" ]]; then
		result=$(echo "$(date +%Y) - $1" | bc)
		if [[ $result -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "plus" ]] && [[ $4 == thirteen ]]; then
		if [[ $(echo "$1 + $3" | bc) -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "minus" ]] && [[ $4 == thirteen ]]; then
		if [[ $(echo "$1 - $3" | bc) -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "times" ]] && [[ $4 == thirteen ]]; then
		if [[ $(echo "$1 * $3" | bc) -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "dividedby" ]] && [[ $4 == "thirteen" ]]; then
		if [[ $(echo "$1 / $3" | bc) -eq 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "greaterthan" ]] && [[ $3 == "thirteen" ]]; then
		if [[ $1 > 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
	if [[ $2 == "lessthan" ]] && [[ $3 == "thirteen" ]]; then
		if [[ $1 < 13 ]]; then
			echo "true"
		else
			echo "false"
		fi
	fi
}
