# Supplementary Code

This directory tree contains supplementary code supporting the analysis reported
in the article "Subtype-Aware Batch Correction retains biological signal of
integrated breast cancer datasets".

Author: Gil Tomás <gil.tomas@igmm.ed.ac.uk>

## Contents
* [Preliminaries and license](#preliminaries-and-license)
* [Install](#install)
* [Run the Analysis](#run-the-analysis)
* [Where Things Are](#where-things-are)


## Preliminaries and license

The execution of this code requires a LINUX/UNIX environment with a working R
(version>=3.4.2) and TeX installations.  Its sole intent is to support the
findings reported in the quoted article.

This file is free software: you can redistribute it and/or modify it under the
terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This file is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this file.  If not, see <http://www.gnu.org/licenses/>.

## Install

Prior requirements to the running of this software include a working R
(version>=3.4.2) and TeX installations.  Furthermore, R packages quoted in
the `src/supp.Rnw` file are also expected to be found in your system.

## Run the Analysis

In order to build the output supplementary pdf file, the user must first
populate the `data/rds` directory with `MAS5`, `RMA` and `fRMA` normalized
ExpressionSet versions of the datasets described in `data/csv/datasets.csv`.
See `data/rds/readme.md` for more details on how these files should be named.

Then, in an R session, with directory set to the `src` directory, type the
following line of code:

```
source(weave.R)
```

This will regenerate the `supp.pdf` file located on `doc`, and save it to the
`out` directory.

## Where Things Are

* `data`
Contains data required for the analysis to run, either in `csv` format or as
`Rds` binary files.

* `doc`
Contains a copy of the weaved supplementary file in `pdf` format

* `lib`
Contains `.R` scripts with code for the methods used.

* `out`
Empty directory where the weaved `supp.pdf` file is to be written into.

* `src`
Contains the `supp.Rnw` file, which contains the R code used in this
manuscript, weaved with `LaTeX` text.  Also contains the `weave.R` file, used to
generate the output `supp.pdf` file.
