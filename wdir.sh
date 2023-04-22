#!/bin/sh

# XXX This has to be in a sh script rather than inline .desktop Exec b/c kdialog fails

# arg $1 is %u, selected directory
# pwd is where %u is
dirname=$(kdialog --inputbox "Enter wrapping directory name:" default)
mkdir -p $dirname
mv "$1" $dirname

