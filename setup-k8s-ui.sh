#!/bin/bash

kubectl create namespace dynatrace

kubectl apply -f https://raw.githubusercontent.com/Dynatrace-APAC/Workshop-Kubernetes/master/kubernetes-monitoring-service-account.yaml

printf "Your k8s API URL\n"
url=$(kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}')
echo $url 
printf "Your Bearer token\n"
sa=$(kubectl get sa dynatrace-monitoring -o jsonpath='{.secrets[0].name}' -n dynatrace)
bearertoken=$(kubectl get secret $sa -o jsonpath='{.data.token}' -n dynatrace | base64 --decode)
echo $bearertoken
