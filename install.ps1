Write-Host "Installing dependencies (default packages)!"

Invoke-Expression "tlmgr install xcolor"
Invoke-Expression "tlmgr install geometry"
Invoke-Expression "tlmgr install hyperref"
# For multicol and tabularx
Invoke-Expression "tlmgr install tools"
# For tikz
Invoke-Expression "tlmgr install pgf"

# For xinttools
Invoke-Expression "tlmgr install xint"
Invoke-Expression "tlmgr install fp"
Invoke-Expression "tlmgr install tcolorbox"
Invoke-Expression "tlmgr install booktabs"

Write-Host "
The acrotex bundle is responsible for the JavaScript.
Since it is not a default package it must be downloaded manually or by this script.
The downloaded .zip must be unziped and compiled afterwards to be useable.
Each of these actions will require a confirmation by you.
"

$FileName = "acrotex.zip"
if (Test-Path $FileName) {
    Write-Host "Acrotex.zip already found: no need to download!"
} else {
    $confirmation = Read-Host "Do you want to download the acrotex.zip?"
    if ($confirmation -eq 'y') {
        # Source file location
        $source = 'http://www.math.uakron.edu/~dpstory/acrotex/acrotex.zip'
        # Destination to save the file
        $destination = '.\acrotex.zip'
        # Download the file
        Invoke-WebRequest -Uri $source -OutFile $destination
    } else {
        Write-Host "Finished installation! Did not download the acrotex package!
        You can rerun this script if you want to install it later."
        Exit
    }
}

$FileName = "acrotex/acrotex.ins"
if (Test-Path $FileName) {
    Write-Host "Acrotex folder already found: skip unzip!"
} else {
    $confirmation = Read-Host "Do you want to unzip the acrotex.zip"
    if ($confirmation -eq 'y') {
        # Destination to save the file
        $destination = '.\acrotex.zip'
        # Unzip
        Expand-Archive $destination -DestinationPath .
    } else {
        Write-Host "Finished installation! Did not unzip the acrotex.zip!
        You can rerun this script if you want to unzip it later."
        Exit
    }
}

$confirmation = Read-Host "Do you want to compile the acrotex.ins"
if ($confirmation -eq 'y') {
    # Compile acrotex to obtain insdljs package
    Invoke-Expression "cd acrotex"
    Invoke-Expression "tex acrotex.ins"
    Invoke-Expression "cd .."

    Write-Host "Complete installation finished! Acrotex package should be available."
} else {
    Write-Host "Finished installation! Did not compile the acrotex.ins!
    You can rerun this script if you want to unzip it later."
}
