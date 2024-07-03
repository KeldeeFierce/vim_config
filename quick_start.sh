#!/bin/bash

#needs npm to run CoC
if which npm; then
	echo "npm is installed"
else
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

vim -c "PlugInstall" +qa

pip install flake8 pylint bandit mypy pycodestyle blacki isort 

vim -c ":CocInstall coc-python" +qa

vim -c ":CocInstall coc-sh" +qa

sudo apt install shellcheck



