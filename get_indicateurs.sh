#!/bin/bash

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< query_indicateurs.sparql)" -H 'Accept: text/csv' > indicateurs.csv
