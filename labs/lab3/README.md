# Install Dynatrace OneAgent Operator for Kubernetes

1. On your Google Cloud Console, on the left navigational bar, go to Kubernetes Engine -> Applications

![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator.png)
2. Click on "Deploy From Marketplace"
3. Search for Dynatrace in the search field above
3. Click on Dynatrace OneAgent Operator and click on Configure
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator-1.png)
4. Fill in the following fields
- API URL <br>
Copy your Dynatrace URL and append "/api" to the end
- API Token <br>
Create one from Settings -> Integration -> Dynatrace API
Enable Access problem and event feed, metrics, and topology toggle
Enable Write Configuration toggle (needed for Activegate setup for the next step)
- PaaS token <br>
Create one from Settings -> Integration -> Platform as a Service
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/operator-2.png)
5. Click on Deploy

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab2/README.md)   :arrow_right: [Next](../lab4/README.md)  

