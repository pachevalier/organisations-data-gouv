#!/bin/bash

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< organisations.sparql)" -H 'Accept: text/csv' > organisations.csv
