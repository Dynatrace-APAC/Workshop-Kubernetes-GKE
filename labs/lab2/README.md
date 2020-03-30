# Setting up your Kubernetes Integration

As per the official instructions [here](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/monitoring/connect-kubernetes-clusters-to-dynatrace/) for the Kubernetes integration, you will need to setup an Environment Activegate first.

### 1.SSH into Dynatrace-Activegate terminal and install Activegate


1. Click on the SSH button and login to terminal
2. Within Dynatrace, click on Deploy Dynatrace on the left menu
3. Click on "Install Activegate" at the bottom of the page
4. Click on "Linux"
5. Copy Step 2 and paste into your terminal.
6. Copy Step 4 and append "sudo" (acting as root command) onto terminal

Once completed, you should see Activegate under Deployment Status.

![Activegate-connected](https://github.com/Nodnarboen/HOT-k8s/blob/master/assets/Picture9.1.png)

### 2. Setup the K8S Overview Dashboard

Automating the steps from our offical [documentation page](https://www.dynatrace.com/support/help/technology-support/cloud-platforms/kubernetes/installation-and-operation/further-integrations/connect-your-kubernetes-clusters-to-dynatrace/), we provided the API URL and bearer token automatically via API. 

``` bash
wget https://github.com/Dynatrace-APAC/Workshop-Kubernetes/blob/master/setup-k8s-ui.sh
chmod 777 setup-k8s-ui.sh
./setup-k8s-ui.sh
```
With the above results, enter the values to <b>Settings</b> -> <b>Cloud and Virtualization</b> -> <b>Kubernetes</b>

:arrow_up: [Back to TOC](/README.md) :arrow_left: [Prev](../lab2/README.md)   :arrow_right: [Next](../lab4/README.md)  
