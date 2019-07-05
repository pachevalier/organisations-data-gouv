# Organisations-data-gouv

[![CircleCI](https://circleci.com/gh/pachevalier/organisations-data-gouv.svg?style=svg)](https://circleci.com/gh/pachevalier/organisations-data-gouv)

Metadata from Wikidata about data.gouv.fr organizations.

Data are published on [data.gouv.fr](https://www.data.gouv.fr/fr/datasets/organisations-de-data-gouv-fr-reliees-a-wikidata/).

## How it works

- All Wikidata Sparql Queries are stored in plain text files which are named with extension `*.sparql`.
- `get_data.sh` queries all the data and create csv files.
- `publish.sh` updates all resources on data.gouv.fr
- Data are updated each monday at 10:00.

Example :

    ./get_data.sh
