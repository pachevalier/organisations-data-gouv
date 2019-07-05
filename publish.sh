#!/bin/bash

#**********************************************************************
# Publication des données sur data.gouv.fr
#**********************************************************************

# fail on error
set -e
export api="https://www.data.gouv.fr/api/1"
export dataset_id="5d0d24af634f411c05d9ca9b"
export resource_id_list="6995e10d-2728-4141-b583-d3aa5294712a"
export resource_id_siren="8ed46317-288c-481c-829a-068f4ceb00ee"
export api_key=$API_KEY
curl "$api/datasets/$dataset_id/resources/$resource_id_list/upload/" -F "file=@organisations.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/$resource_id_siren/upload/" -F "file=@siren-datagouv.csv" -H "X-API-KEY:$api_key"
