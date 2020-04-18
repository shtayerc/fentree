# fentree
Tree view of FEN position count from PGN file

`fentree` is simple POSIX compliant shell script that displays tree with FEN positions from PGN file.\
It requires [pgn-extract](https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/) and `tree` command.

## Defining FEN positions
Positions are defined in text file with line separated directory:fen structure.\
Contents of `example.fentree`
```shell
#example comment
e4/e5/Nf3:rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2
e4/e5/Bc4:rnbqkbnr/pppp1ppp/8/4p3/2B1P3/8/PPPP1PPP/RNBQK1NR b KQkq - 1 2
```

## Usage
```
Usage: fentree [arguments] <pgn file>
-h        display help
-v        display version
-f <file> path to fentree file (default is given file with .fentree extension)
-a <args> tree(1) command arguments
-s <path> subtree
```

File `example.pgn` contains 30 games containing first FEN position and 5 games with second.\
`example.fentree` is in the same directory as PGN file.
```
$ fentree example.pgn
example.pgn
└── e4
    └── e5
        ├── Bc4
        │   └── 5
        └── Nf3
            └── 30
```
```
$ fentree -s e4/e5/Bc4 example.pgn
example.pgn/e4/e5/Bc4
└── 5
```

## Installation
`make install`

Uninstall by running `make uninstall`
