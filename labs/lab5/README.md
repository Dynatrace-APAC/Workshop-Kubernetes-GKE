# Exploring Dynatrace

### 1. Automatic Discovery of services

In Dynatrace, go to Transactions and Services to see the automatic discovered treasures.

You will realized that some services are discovered but some might not match <a href="https://github.com/GoogleCloudPlatform/microservices-demo#service-architecture">Hipster Shop's Service architecture</a>.
Hipster Shop uses cutting edge technologies which Dynatrace supports with the constant evolution in the cloud.

![JSON](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/architecture-diagram.png)

### 2. Enabling additional features within OneAgent

Because of the rapid rate of change coming to OneAgent, features that are in Early Access aren't automatically enabled by default. 
This is to prevent unforseen circumstances which might impact your production environments. For the purposes of workshop, we can enable these features. Go to <b>Settings</b> -> Service-side service monitoring -> Deep Monitoring -> Oneagent 

![JSON](https://github.com/Nodnarboen/k8s-workshop/blob/master/assets/Picture14.png)

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab4/README.md)   :arrow_right: [Next](../lab6/README.md)  
