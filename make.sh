#!/usr/bin/env bash
# ______________________________________________________________________________
#
#   2DV603 Software Engineering
#   Assignment 1 --- Requirements Engineering
#
#   Author:  Jonas Sjöberg
#            Linnaeus University
#            js224eh@student.lnu.se
#            github.com/jonasjberg
#            www.jonasjberg.com
#
#  License:  Creative Commons Attribution 4.0 International (CC BY 4.0)
#            <http://creativecommons.org/licenses/by/4.0/legalcode>
#            See LICENSE.md for additional licensing information.
# ______________________________________________________________________________

set -o nounset


SELF_PATH="$(dirname "$(realpath -e -- "$0")")"
DB_FILE='./src/RC_2007-10.db'
DB_FILE_CONSTRAINTS='./src/RC_2007-10_constraints.db'

command -v latexmk >/dev/null || exit 1

(
  # Sanity-checking ..
  cd "$SELF_PATH" || exit 1
  [ -f './main.tex' ] || exit 1

  # Cleanup build directory
  [ -d './build' ] && find './build' -xdev -mindepth 1 -maxdepth 1 -type f -delete
  [ -d './build' ] || mkdir 'build'

  # Create include directory if missing
  [ -d './include' ] || mkdir 'include'


  pandoc -f markdown -t latex -o domain_summary.md.tex domain_summary.md
  pandoc -f markdown -t latex -o use_cases.md.tex use_cases.md

  # Always run at least three times for good measure
  latexmk main.tex -outdir=build -pdf -pdflatex='pdflatex -synctex=1 -interaction=nonstopmode -shell-escape'
  latexmk main.tex -outdir=build -pdf -pdflatex='pdflatex -synctex=1 -interaction=nonstopmode -shell-escape'
  latexmk main.tex -outdir=build -pdf -pdflatex='pdflatex -synctex=1 -interaction=nonstopmode -shell-escape'

)
