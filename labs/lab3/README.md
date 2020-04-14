# Install Dynatrace OneAgent Operator for Kubernetes

1. On your Google Cloud Console, on the left navigational bar, go to Kubernetes Engine -> Applications
2. Click on "Deploy From Marketplace"
3. Search for Dynatrace in the search field above
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator.png)
4. Click on Dynatrace OneAgent Operator and click on Configure
5. Fill in the following fields<br>
- API URL <br>
Copy your Dynatrace URL and append "/api" to the end<br>
![API-URL](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator-1-withURL.png)

- API Token <br>
Create one from Settings -> Integration -> Dynatrace API
  - Enable Access problem and event feed, metrics, and topology toggle
  - Enable Write Configuration toggle (needed for Activegate setup for the next step)<br>
![API-Token](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/api-token.png)

- PaaS token <br>
Create one from Settings -> Integration -> Platform as a Service
![PaaS-Token](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/paas-token.png)

Copy the values into your GCP console
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator-1.png)

6. Click on Deploy<br>
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator-2.png)<br>

Once completed, you can click on Hosts on the left panel to see your connected K8S nodes. 

![GKE-Hosts](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/Picture7.1.png)

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab2/README.md)   :arrow_right: [Next](../lab4/README.md)  

