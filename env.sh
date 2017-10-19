#!/bin/bash
command="oc create configmap userapi-config "
while read p; do
  command="$command --from-literal=$p "
done <config.properties
eval $command