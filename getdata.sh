#!/bin/bash

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< organisations.sparql)" -H 'Accept: text/csv' > organisations.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< siren-datagouv.sparql)" -H 'Accept: text/csv' > siren-datagouv.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< rna.sparql)" -H 'Accept: text/csv' > rna.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< lannuaire.sparql)" -H 'Accept: text/csv' > lannuaire.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< code_insee.sparql)" -H 'Accept: text/csv' > code_insee.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< dataportals.sparql)" -H 'Accept: text/csv' > dataportals.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< doublons.sparql)" -H 'Accept: text/csv' > doublons.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< instance_of.sparql)" -H 'Accept: text/csv' > instance_of.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< labels.sparql)" -H 'Accept: text/csv' > labels.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< filiales.sparql)" -H 'Accept: text/csv' > filiales.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< twitter.sparql)" -H 'Accept: text/csv' > twitter.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< github.sparql)" -H 'Accept: text/csv' > github.csv
