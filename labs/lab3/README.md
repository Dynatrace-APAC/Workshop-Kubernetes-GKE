# Install Dynatrace OneAgent Operator for Kubernetes

1. On your Google Cloud Console, on the left navigational bar, go to Kubernetes Engine -> Applications
2. Click on "Deploy From Marketplace"
3. Search for Dynatrace in the search field above
3. Click on Dynatrace OneAgent Operator and click on Configure
4. Fill in the following fields
- API URL <br>
Copy your Dynatrace URL and append "/api" to the end
- API Token <br>
Create one from Settings -> Integration -> Dynatrace API
Enable Access problem and event feed, metrics, and topology toggle
Enable Write Configuration toggle (needed for Activegate setup for the next step)
- PaaS token <br>
Create one from Settings -> Integration -> Platform as a Service
5. Click on Deploy

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab1/README.md)   :arrow_right: [Next](../lab3/README.md)  

