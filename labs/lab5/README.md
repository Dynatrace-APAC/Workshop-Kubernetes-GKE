# Exploring Dynatrace

### 1. Automatic Discovery of services

In Dynatrace, go to Transactions and Services to see the automatic 5 discovered services.
![Discovered Services](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/lab5-autodiscoveredservices.png)

You will realized that some services are discovered but some might not match <a href="https://github.com/GoogleCloudPlatform/microservices-demo#service-architecture">Hipster Shop's Service architecture</a>.
Hipster Shop uses cutting edge technologies (such as GPRC) which Dynatrace supports with the constant evolution in the cloud.

![Architecture](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/architecture-diagram.png)

### 2. Enabling additional features within OneAgent

Because of the rapid rate of change coming to OneAgent, features that are in Early Access aren't automatically enabled by default. 
This is to prevent unforseen circumstances which might impact your production environments. For the purposes of workshop, we can enable these features. Go to <b>Settings -> Service-side service monitoring -> Deep Monitoring -> New Oneagent Features</b>

Under Global Settings, enable the following feature flags. They are on different pages so you would need to toggle through the pages.

You can use the search filter bar to search for <b>"GRPC"</b>
![GRPC-Features](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/lab5-b4EnableGRPC-settings.png )

![Features](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/features.png)

Make sure all the below features all enabled, including the 2 additional NodeJS feature flags.
![All-Features](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/all-features.png)

Enabling OneAgents features requires a restart of the pods. Run the following command to restart the pods.

```bash
kubectl delete pods --all -n hipster-shop
```
![Restart](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/restart.png)

Back in Dynatrace, go to and Transactions and Services to see the updated list of services.
![Discovered Services](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/lab5-AfterEnableGRPC-settings.png)

Clicking on Go Service ":8080" followed by Service Flow, you can see that the service are automatically detected and matches the architecture diagram above.

![Service Flow](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/serviceflow.png)

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab4/README.md)   :arrow_right: [Next](../lab6/README.md)  
