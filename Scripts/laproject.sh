#!/bin/bash
prjfld=$(PWD)
if [ ! -d _latemplate ]; then
    git clone "https://gitlab.com/amitronics/latemplate.git" _latemplate
else
    cd _latemplate/
    git pull origin master
    cd ..
fi

pypath="$(dirname "$(where python)")";
pyv="$(py -V 2>&1)"
if [[ $pyv == *"Python"* ]]; then
    echo Found "$pyv"
    if [ -f ~/.local/bin/ ]; then
        echo pipx is missing
    else
        python -m pip install pipx
        cd "$pypath/Scripts/"
        pipx ensurepath --force
        pipx install cookiecutter
    fi
    export PATH=$HOME/.local/bin:$PATH
	# Install template
	cd $prjfld
    cookiecutter _latemplate
else
    echo No valid python found in your PATH
fi

read  -n 1 -p "Press any key to coninue..." mainmenuinput 
