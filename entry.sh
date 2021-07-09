#!/bin/bash   

./openrefine_client --create data/$1

project_name=${1/".csv"/""}

./openrefine_client --apply operations/operations.json $project_name

./openrefine_client --export --output=data/${project_name}_out.csv $project_name

./openrefine_client --delete $project_name