#!/bin/bash

find ./??_* -maxdepth 2 -type f -name "*.osm" -exec sh -c 'echo {}; cat {} | grep "OSM link" | sort | uniq -cd;cat {} | grep "OSM link" | sort | uniq -cd | wc -l' \;
