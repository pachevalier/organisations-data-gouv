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
export resource_id_twitter="538f4021-d834-405f-8a51-c698b70c705f"
export api_key=$API_KEY

curl "$api/datasets/$dataset_id/resources/$resource_id_twitter/upload/" -F "file=@twitter.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/90df863e-61a3-474f-9888-05ff04b15137/upload/" -F "file=@rna.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/70213c49-a490-4fd1-ace4-0f9f0638fbec/upload/" -F "file=@lannuaire.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/$resource_id_siren/upload/" -F "file=@siren-datagouv.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/7a5222b3-d656-4a99-ae2e-d73e96a6f8cd/upload/" -F "file=@code_insee.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/2bb457fd-a661-4dfc-87e9-21f9d2a45f10/upload/" -F "file=@labels.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/$resource_id_list/upload/" -F "file=@organisations.csv" -H "X-API-KEY:$api_key"
