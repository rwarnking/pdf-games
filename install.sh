#!/bin/bash
echo "Installing dependencies (default packages)!"

tlmgr install xcolor
tlmgr install geometry
tlmgr install hyperref
# For multicol and tabularx
tlmgr install tools
# For tikz
tlmgr install pgf

# For xinttools
tlmgr install xint
tlmgr install fp
tlmgr install tcolorbox
tlmgr install booktabs

echo "
The acrotex bundle is responsible for the JavaScript.
Since it is not a default package it must be downloaded manually or by this script.
The downloaded .zip must be unziped and compiled afterwards to be useable.
Each of these actions will require a confirmation by you."

FILE="acrotex.zip"
if [[ -f $FILE ]]; then
    echo "Acrotex.zip already found: no need to download!"
else
    read -p "Do you want to download the acrotex.zip? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        # Source file location
        source="http://www.math.uakron.edu/~dpstory/acrotex/acrotex.zip"
        # Destination to save the file
        destination=".\acrotex.zip"
        # Download the file
        wget $source -O $destination
    else
        echo "Finished installation! Did not download the acrotex package!
        You can rerun this script if you want to install it later."
        exec $SHELL
        exit
    fi
fi

FILE="acrotex/acrotex.ins"
if [[ -f $FILE ]]; then
    echo "Acrotex folder already found: skip unzip!"
else
    read -p "Do you want to unzip the acrotex.zip? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Unzip"
        # Unzip
        unzip acrotex.zip
    else
        echo "Finished installation! Did not unzip the acrotex.zip!
        You can rerun this script if you want to unzip it later."
        exec $SHELL
        exit
    fi
fi

read -p "Do you want to compile the acrotex.ins? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Compile acrotex to obtain insdljs package
    cd acrotex
    tex acrotex.ins
    cd ..

    echo "Complete installation finished! Acrotex package should be available."
else
    echo "Finished installation! Did not compile the acrotex.ins!
    You can rerun this script if you want to unzip it later."
fi
exec $SHELL
