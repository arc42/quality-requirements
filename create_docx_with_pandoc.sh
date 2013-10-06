#!/bin/bash          
            
TARGET="./build/docs"

FILENAME="index"
INFILEXTENSION="xml"

DOCXSTYLE="resources/arc42-style.docx"

#
echo "generate docx from docbook"
#################################
#
# too bad, reference-docx does not work (produces illegal output)
# pandoc --from docbook --to docx --reference-docx=$DOCXSTYLE --output $TARGET/$FILENAME.docx $TARGET/$FILENAME.$INFILEXTENSION
pandoc --from docbook --to docx --output $TARGET/$FILENAME.docx $TARGET/$FILENAME.$INFILEXTENSION


###########################################################
#
# This is free software - use at your own risk.
# Created by Gernot Starke
#
# Apache License, Version 2.0
