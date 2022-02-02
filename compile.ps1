param($p1)

if ($p1 -eq 'H' -Or $p1 -eq 'h' -Or $p1 -eq 'help' -Or $p1 -eq 'Help' -Or $p1 -eq 'HELP') {
    Write-Host "
    This script can be used to compile .tex files.
    For this to work this file needs to be one folder above the .tex file
    and the .tex file itself needs to be in a folder called src.
    Furthermore the LaTeX distribution must be found in c:/texlive and
    the acrotex package needs to be present and compiled in this directory
    with a folder name acrotex.
    Of course you are free to alter the needed directorys in this script.

    Command for compiling a .tex file:
    .\compile.ps1 filename.tex
    "
} elseif ($p1 -Match '.tex') {
    Write-Host "Start compiling!"

    # https://stackoverflow.com/questions/714877/setting-windows-powershell-environment-variables
    # https://www2.ph.ed.ac.uk/~wjh/tex/documents/environmental.pdf
    $env:TEXINPUTS = ';c:/texlive/'
    $env:TEXINPUTS += ';../acrotex/'

    Invoke-Expression "cd src"
    Invoke-Expression "latexmk -pdf $p1"
    Invoke-Expression "latexmk -c"

    $FileName = "JSDateiname.djs"
    if (Test-Path $FileName)
    {
      Remove-Item $FileName
      Write-Host "Removed temporary JavaScript file!"
    }

    Invoke-Expression "cd .."

    Write-Host "Finished compiling!"
} else {
    Write-Host "This script can be used to compile .tex files.
    For more information:
    .\compile.ps1 help"
}
