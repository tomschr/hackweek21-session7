#!/bin/bash

XMLFILE="${1:-article.xml}"
HTMLFILE="${XMLFILE%*.xml}.html"
DOCBOOK_XSL="/usr/share/xml/docbook/stylesheet/nwalsh5/current/xhtml5/docbook.xsl"

./validate.sh "$XMLFILE"
RES=$?
if [ $RES -ne 0 ]; then
  echo "ERROR: Aborted transformation" >/dev/stderr
  exit $RES
fi
echo "INFO: Convert $XMLFILE -> $HTMLFILE"
# echo "INFO: xsltproc --output $HTMLFILE $DOCBOOK_XSL $XMLFILE"
xsltproc --output "$HTMLFILE" "$DOCBOOK_XSL" "$XMLFILE"
