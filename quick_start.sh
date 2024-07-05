#!/bin/bash

#needs npm to run CoC

function check_install () {
	if which "$1"; then
		echo "$1 is installed"
	else
		echo "installing $1"
		if $2; then
			echo "Success"
		else
			echo "Something went wrong"
			exit 1
		fi 
	fi
}

function install () {
	echo "installing $1"
	if $1; then
		echo "Success"
	else
		echo "Something went wrong"
		exit 1
	fi
}

check_install "curl" "sudo apt install curl"
check_install "node" "sudo apt install nodejs"
check_install "npm" "sudo apt install npm"
check_install "pip" "sudo apt install pip"
install "pip install flake8 pylint bandit mypy pycodestyle black isort"
check_install "shellcheck" "sudo apt install shellcheck"

echo "PlugInstall"
if vim -c "PlugInstall" +qa; then
	echo "Success"
else
	echo "Something went wrong"
	exit 1
fi

echo "CocInstall python"
if vim -c ":CocInstall coc-python" +qa; then
	echo "Success"
else
	echo "Something went wrong"
	exit 1
fi

echo "CocInstall sh"
if vim -c ":CocInstall coc-sh" +qa; then
	echo "Success"
else
	echo "Something went wrong"
	exit 1
fi

exit 0
