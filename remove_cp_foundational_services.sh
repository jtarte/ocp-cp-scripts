#!/bin/bash

for i in $(oc get operandrequest -n ibm-common-services -o name);
do 
    echo $i
done

for i in $(oc get operandconfig -n ibm-common-services -o name);
do 
    echo $i
done

for i in $(oc get operandregistry -n ibm-common-services -o name);
do 
    echo $i
done

for i in $(oc get namespacescope -n ibm-common-services -o name);
do 
    echo $i
done



API=('cpp.ibm.com' 'operator.ibm.com' 'ibmcpcs.ibm.com' 'operators.ibm.com')
for i in ${API[@]};
do 
    echo API: $i
    for j in $(oc get crd -o name| grep $i)
    do
        echo $j
    done
done

