#!/bin/bash          
            
SOURCE="./src/asciidoc"
TARGET="./build/docs"

FILENAME="index"

# make asciidoc verbose
#ADOCOPTION="-v"
ADOCOPTION=""


# change to asciidoc, in case you don't have asciidoctor installed!
# see http://www.asciidoctor.org for details (easy: gem install asciidoctor)
if command -v asciidoctor  >/dev/null 2>&1; then
        ASCIIDOC="asciidoctor"
    else
        ASCIIDOC="asciidoc"
    fi
#ASCIIDOC="asciidoc"
#ASCIIDOC="asciidoctor"

echo "using your " $ASCIIDOC " executable..."

            
#
# create target directory, if it does not exist
#
mkdir -p $TARGET


#
echo "generate html version" 
#
$ASCIIDOC $ADOCOPTION -b html5 -o $TARGET/$FILENAME.html $SOURCE/$FILENAME.adoc

#
echo "generate docbooc version"
#
$ASCIIDOC $ADOCOPTION -b docbook -o $TARGET/$FILENAME.docbook $SOURCE/$FILENAME.adoc


#
echo "generate docx from docbook"
#
pandoc --from docbook --to docx --output $TARGET/$FILENAME.docx $TARGET/$FILENAME.docbook




###########################################################
#
# This is free software - use at your own risk.
# Created by Gernot Starke
#
# Apache License, Version 2.0
