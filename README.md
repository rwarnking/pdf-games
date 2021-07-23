# PDF games

[![GitHub Super-Linter](https://github.com/rwarnking/pdf-games/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Description
This is a collection of small LaTeX files, that contain some sort of javascript
allowing for small applications or games.

Supported games are:
- Connect four
- Dont break the ice
- Tetris
- TicTacToe
- Particles
- Memory
- Game of Life
- Minesweeper
- Set
- Sudoku
- Tictactoe
- RotatingAsciiDonut

If you have additional game ideas feel free to mention them as a comment in this
[issue](https://github.com/rwarnking/pdf-games/issues/6).
For images and more details of the different games,
take a look into the [wiki](https://github.com/rwarnking/pdf-games/wiki) of this project.

## Table of Contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Contributing](#contributing)
4. [Credits](#credits)
4. [License](#license)

## Installation

1. install LaTeX e.g. [TeX Live](https://www.tug.org/texlive/)
2. install the insdljs package
    * This package is not necessarily component of the default LaTeX packages and needs to be
        installed manually
    * Download the acrotex bundle [Source1](https://ctan.org/pkg/insdljs) | [Source2](http://www.math.uakron.edu/~dpstory/webeq.html)
    * Unzip the bundle
    * Use ```tex acrotex.ins``` to compile the file and to get the insdljs.sty
    * Check that the files are found by LaTeX e.g. by putting them in the same directory

### Dependencies

#### Mandatory
- [insdljs](https://ctan.org/pkg/insdljs)

#### Mandatory when using template
- [tcolorbox](https://www.ctan.org/pkg/tcolorbox)
- [multicol](https://www.ctan.org/pkg/multicol)
- [tabularx](https://www.ctan.org/pkg/tabularx)
- [geometry](https://www.ctan.org/pkg/geometry)

#### Optional but recommended
- [xinttools](https://www.ctan.org/pkg/xint)
- [hyperref](https://www.ctan.org/pkg/hyperref)
- [xcolor](https://www.ctan.org/pkg/xcolor)
- [fp](https://www.ctan.org/pkg/fp)

## Usage

Simply compile the texfile to pdf and open the PDF with Adobe Acrobat Reader, other pdf viewer
where not tested and may not be able to run the javascript.
For more detail on the different games and how the program similar projects,
take a look into the [wiki](https://github.com/rwarnking/pdf-games/wiki) of this project.

## Contributing

I encourage you to contribute to this project, in form of bug reports, feature requests
or code additions. Although it is likely that your contribution will not be implemented.

Please check out the [contribution](docs/CONTRIBUTING.md) guide for guidelines about how to proceed
as well as a styleguide.

## Credits
Up until now there are no further contributors other than the repository creator.

## License
This project is licensed under the MIT License
