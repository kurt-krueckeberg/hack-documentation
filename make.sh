#!/usr/bin/env bash
sphinx-build -b html source/ build/html
cd build/html
sed -i -e 's/max-width:\s800px;/max-width: 65%;/' _static/basic.css
