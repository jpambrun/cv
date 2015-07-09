#! /bin/sh
latexmk -jobname=cv_fr-color -f "\input{cv}"
latexmk -jobname=cv_en-color -f "\def\isenglish{1}\input{cv}"
latexmk -jobname=cv_fr-print -f "\def\isprint{1}\input{cv}"
latexmk -jobname=cv_en-print -f "\def\isprint{1}\def\isenglish{1}\input{cv}"

latexmk -jobname=cv_fr-color -c
latexmk -jobname=cv_en-color -c
latexmk -jobname=cv_fr-print -c
latexmk -jobname=cv_en-print -c