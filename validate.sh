#!/bin/bash

XMLFILE=${1:-article.xml}
DOCBOOK_RNG="/usr/share/xml/docbook/schema/rng/5.2/docbook.rng"

echo "INFO: Validating $XMLFILE..."
jing "$DOCBOOK_RNG" "$XMLFILE"
