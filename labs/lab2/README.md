# Setting up your Kubernetes Integration

As per the official instructions [here](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/monitoring/connect-kubernetes-clusters-to-dynatrace/) for the Kubernetes integration, you will need to setup an Environment Activegate first.

### 1.SSH into Dynatrace-Activegate terminal and install Activegate


![Activegate-connected](https://github.com/Nodnarboen/Workshop-Kubernetes/blob/master/assets/activegate-0.png)
1. On the left navigation bar in Google Cloud, go to Kubernetes Engine -> VM instances
![Activegate-connected](https://github.com/Nodnarboen/Workshop-Kubernetes/blob/master/assets/activegate.png)
2. Click on the SSH button on the dynatrace-activegate row and login to terminal
2. Within Dynatrace, click on Deploy Dynatrace on the left menu
3. Click on "Install Activegate" at the bottom of the page
4. Click on "Linux"
![Copy-AG-Commands](https://github.com/Nodnarboen/Workshop-Kubernetes/blob/master/assets/activegate-2.png)
5. Copy Step 2 and paste into your terminal.
![Copy-AG-Commands](https://github.com/Nodnarboen/Workshop-Kubernetes/blob/master/assets/activegate-3.png)
6. Copy Step 4 and append "sudo" (installing as root) onto terminal

Once completed, you should see Activegate under Deployment Status.

![Activegate-connected](https://github.com/Nodnarboen/Workshop-Kubernetes/blob/master/assets/Picture9.1.png)

### 2. Setup the K8S Overview Dashboard

Automating the steps from our offical [documentation page](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/installation-and-operation/further-integrations/connect-your-kubernetes-clusters-to-dynatrace/), we provided the API URL and bearer token automatically via API. Back in your Cloud Shell terminal, enter the below

``` bash
wget https://raw.githubusercontent.com/Dynatrace-APAC/Workshop-Kubernetes/master/setup-k8s-ui.sh
chmod 777 setup-k8s-ui.sh
./setup-k8s-ui.sh
```
With the above results, enter the values to <b>Settings</b> -> <b>Cloud and Virtualization</b> -> <b>Kubernetes</b>

1. Give a name for the connection eg. GKE K8S
2. Enter in your Kubernetes API URL Target
3. Enter in the Kubernetes Bearer Token
4. Disable "Require valid certificates for communication with API server"
5. Add another event field selector
6. User the below for the field selector name
``` bash
Non Node events 
```
7. User the below for the Field selector expression
``` bash
involvedObject.kind!=Node
```
8. Save and Click on Connect


:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab2/README.md)   :arrow_right: [Next](../lab4/README.md)  
