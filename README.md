# PDF games

[<img alt="Build status" src="https://img.shields.io/github/workflow/status/rwarnking/pdf-games/Create%20PDFs?label=Build&logo=github&style=for-the-badge" height="23">]()
[<img alt="Linting status of master" src="https://img.shields.io/github/workflow/status/rwarnking/pdf-games/Lint%20Code%20Base?label=Linter&style=for-the-badge" height="23">](https://github.com/marketplace/actions/super-linter)
[<img alt="Version" src="https://img.shields.io/github/v/release/rwarnking/pdf-games?style=for-the-badge" height="23">](https://github.com/rwarnking/pdf-games/releases/latest)
[<img alt="Licence" src="https://img.shields.io/github/license/rwarnking/pdf-games?style=for-the-badge" height="23">](https://github.com/rwarnking/pdf-games/blob/main/LICENSE)

## Description
This is a collection of LaTeX files, that contain some sort of JavaScript
allowing for applications or games.

## Table of Contents
1. [List of Games](#list-of-available-games)
1. [Installation](#installation)
2. [Usage](#usage)
3. [Contributing](#contributing)
4. [Credits](#credits)
4. [License](#license)

## List of available Games

- AsciiDonut, [Wiki](https://github.com/rwarnking/pdf-games/wiki/ASCII-Donut), [Rules](https://www.a1k0n.net/2011/07/20/donut-math.html)
- Ascii_mon, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Asciimon)
- Chess, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Chess), [Rules](https://en.wikipedia.org/wiki/Chess)
- ConnectFour, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Connect-Four), [Rules](https://en.wikipedia.org/wiki/Connect_Four)
- Crossword puzzle, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Crossword), [Rules](https://en.wikipedia.org/wiki/Crossword)
- Dont break the ice, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Don't-break-the-ice), [Rules](https://en.wikipedia.org/wiki/Don%27t_Break_the_Ice)
- Game of Life, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Game-of-life), [Rules](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
- Match-three puzzle, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Match-Three) [Rules](https://en.wikipedia.org/wiki/Tile-matching_video_game)
- Mau Mau, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Mau-Mau), [Rules](https://en.wikipedia.org/wiki/Mau-Mau_(card_game))
- Memory, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Memory), [Rules](https://en.wikipedia.org/wiki/Concentration_(card_game))
- Minesweeper, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Minesweeper), [Rules](https://en.wikipedia.org/wiki/Minesweeper_(video_game))
- Mühle, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Mills), [Rules](https://en.wikipedia.org/wiki/Nine_men%27s_morris)
- Particles, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Particles)
- Peg solitaire / Solo Noble, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Peg-Solitaire), [Rules](https://en.wikipedia.org/wiki/Peg_solitaire)
- Set, [Wik](https://github.com/rwarnking/pdf-games/wiki/Set), [Rules](https://en.wikipedia.org/wiki/Set_(card_game))
- Sidescrollter [Rules](https://en.wikipedia.org/wiki/Techno_Kitten_Adventure)
- Sudoku, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Sudoku), [Rules](https://en.wikipedia.org/wiki/Sudoku)
- Tetris, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Tetris), [Rules](https://en.wikipedia.org/wiki/Tetris)
- Tictactoe, [Wiki](https://github.com/rwarnking/pdf-games/wiki/Tic-Tac-Toe), [Rules](https://en.wikipedia.org/wiki/Tic-tac-toe)

If you have additional game ideas feel free to mention them as a comment in this
[issue](https://github.com/rwarnking/pdf-games/issues/6).
For images and more details of the different games,
take a look into the [wiki](https://github.com/rwarnking/pdf-games/wiki) of this project.

## Installation

If you are only interested in the PDF you can download a `zip` containing all PDFs from
[here](github.com/rwarnking/pdf-games/releases/latest).
To program such a PDF yourself you need this:

1. install LaTeX e.g. [TeX Live](https://www.tug.org/texlive/)
2. install the insdljs package
    * This package is not necessarily component of the default LaTeX packages and needs to be
        installed manually
    * Download the acrotex bundle [Source1](https://ctan.org/pkg/insdljs) | [Source2](http://www.math.uakron.edu/~dpstory/webeq.html)
    * Unzip the bundle
    * Use `tex acrotex.ins` to compile the file and to get the insdljs.sty
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

Simply compile the `.tex` file to PDF and open the PDF with `Adobe Acrobat Reader`,
other PDF viewer were not tested and may not be able to run the JavaScript.

OBACHT: Different compiler might leed to different outputs for example regarding spacing.
The here used compiler was `pdfLaTeX` with TeX live version `2021`.
Furthermore you might need to enable the JavaScript even when using Adobe,
more information regarding the settings can be found
[here](https://github.com/rwarnking/pdf-games/wiki).

For more details on the different games and how the program similar projects,
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
