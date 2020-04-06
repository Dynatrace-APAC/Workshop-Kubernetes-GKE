# Setting up your Kubernetes Integration

As per the official instructions [here](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/monitoring/connect-kubernetes-clusters-to-dynatrace/) for the Kubernetes integration, you will need to setup an Environment Activegate first.

### 1. SSH into Dynatrace-Activegate terminal and install Activegate


1. On the left navigation bar in Google Cloud, go to <b>Compute Engine</b> -> <b>VM instances</b>
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/activegate-0.png)

2. Click on the SSH button on the <b>dynatrace-activegate</b> row and SSH into the instance
![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/activegate.png)

2. Within Dynatrace, click on Deploy Dynatrace on the left menu
3. Click on "Install Activegate" at the bottom of the page
4. Click on "Linux"
5. Copy Step 2 and paste into your terminal.
6. Copy Step 4 and append "sudo" (installing as root) onto terminal
![Copy-AG-Commands](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/activegate-2.png)

Once completed, you should see Activegate under Deployment Status.

![Activegate-connected](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/Picture9.1.png)

### 2. Setup the K8S Overview Dashboard

Go to Settings -> Process and Containers -> Process group detection -> Enable Cloud Application and workload detection

![Enable Cloud Workload](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/enablecloud.png)

Automating the steps from our offical [documentation page](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/installation-and-operation/further-integrations/connect-your-kubernetes-clusters-to-dynatrace/), we provided the API URL and bearer token automatically via API. Back in your main Cloud Shell terminal, enter the below

``` bash
wget -O- https://raw.githubusercontent.com/Dynatrace-APAC/Workshop-Kubernetes/master/setup-k8s-ui.sh | bash
```
With the above results, enter the values to <b>Settings</b> -> <b>Cloud and Virtualization</b> -> <b>Kubernetes</b>

![K8S-integration](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/activegate-4.png)
1. Give a name for the connection eg. GKE K8S
2. Enter in your Kubernetes API URL Target 
   - Copy the Kubernetes API URL from the SSH terminal
3. Enter in the Kubernetes Bearer Token
   - Copy the Bearer Token from the SSH terminal
4. Disable "Require valid certificates for communication with API server"
5. Add another event field selector
6. User the below for the field selector name
``` bash
Hipster shop 
```
7. User the below for the Field selector expression
``` bash
metadata.namespace=hipster-shop
```
8. Save and Click on Connect

Once successfully connected, click on Kubernetes on the left menu and explore the Kubernetes UI. 

![K8S-integration](https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/assets/k8s.png)

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab1/README.md)   :arrow_right: [Next](../lab3/README.md)  
