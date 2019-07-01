#!/bin/bash

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< organisations.sparql)" -H 'Accept: text/csv' > organisations.csv

#**********************************************************************
# Publication des données sur data.gouv.fr
#**********************************************************************

# fail on error
set -e

case ${CIRCLE_BRANCH} in
    # La publication n'est appliquée que sur la branche master master)
    export api="https://www.data.gouv.fr/api/1"
    export dataset_id="5d0d24af634f411c05d9ca9b"
    export resource_id_list="6995e10d-2728-4141-b583-d3aa5294712a"
    #API_KEY configurée dans les options de build de CircleCI
    api_key=$API_KEY

if [[ ! -f organisations.csv ]]
then
    echo "Le fichier doit d'abord être généré."
    exit 1
fi

echo "Remplacement de organisations.csv par leur mise à jour quotidienne"

for file in list
do

case $file in
    xml)
    resource_id=$resource_id_list
    ;;

esac

echo "Mise à jour de ${file}..."

curl "$api/datasets/$dataset_id/resources/${resource_id}/upload/" -F "file=@${file}" -H "X-API-KEY: $api_key"

done

;;
esac
