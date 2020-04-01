#!/bin/sh


REGISTRYURL=perform2019.azurecr.io
REGISTRYUSER=Perform2019
REGISTRYPASS=0bzP54BsVNxfoDh0bf39VE7Wvy2OT7T+

#create namespace sample app
kubectl create namespace hipster-shop
kubectl -n hipster-shop  create rolebinding default-view --clusterrole=view --serviceaccount=hipster-shop:default
#kubectl annotate namespace hipster-shop scheduler.alpha.kubernetes.io/node-selector=node-role.kubernetes.io/istio=
#kubectl label namespace hipster-shop istio-injection=enabled

#deploy sample app
kubectl -n hipster-shop create secret docker-registry demo-registry --docker-server=$REGISTRYURL --docker-username=$REGISTRYUSER --docker-password=$REGISTRYPASS

kubectl -n hipster-shop apply -f k8s-manifest.yaml 
#kubectl -n hipster-shop apply -f ../test-app/hipster-shop/k8s/istio-ingress.yaml
