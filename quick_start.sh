#!/bin/bash

#needs npm to run CoC
if which npm; then
	echo "npm is installed"
else
	echo "Installing nvm"
	if curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash; then
		echo "Success"
	else
		echo "Something whent wrong"
		exit 1
	fi
fi

echo "PlugInstall"
if vim -c "PlugInstall" +qa; then
	echo "Success"
else
	echo "Something went wrong"
	exit 1
fi

echo "pip install"
if pip install flake8 pylint bandit mypy pycodestyle blacki isort; then 
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


echo "CocInstall sh"
if sudo apt install shellcheck; then
	echo "Success"
else
	echo "Something went wrong"
	exit 1
fi







