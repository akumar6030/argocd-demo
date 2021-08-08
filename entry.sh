#!/bin/bash
sed "s/tagVersion/$1/g" yamls/rdsapp-depl.yaml > rdsapp-qal/rdsapp-depl.yaml