#!/bin/bash 

usage () {
    echo "command usage"
    echo "extract_secret_values.sh <namespace> <secret_name>"
}

if [ $# != 2 ]
then 
    usage
    exit 1
fi

RESULT=$(oc get secret $2 -n $1 -o json)
RC=$(echo $?)

if [ $RC != 0 ]
then
    exit $RC
fi

KEYS=$(echo $RESULT | jq '.data | keys')
KEYS=$(echo $KEYS | sed -e 's/','//g' -e 's/\[//g' -e 's/\]//g')

for i in $KEYS
do
    echo $i
    echo $RESULT | jq -r --argjson i $i '.data[$i]' | base64 -d 
done

