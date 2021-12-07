# OpenShift Container Platform and IBM Cloud Pak useful scripts

This repository is a place where several useful script for OCP and IBM Cloud Paks.

## How to use it

Clone this repository on your environment

Add the local repo directory on the PATH environment variables

For example, on Mac OS:
```
export PATH=$PATH:<your directory full path>
```

Then you could call the different scripts that are present in this directory.


## List of available scripts

Script name  | Platform | Description | usage
-------------| -------- | ----------- | -----
enable_ocp_user_monitoring.sh | OCP | Activate the monitoring of user projects. | ``` enable_ocp_user_monitoring.sh ```
entitlment.sh | IBM Cloud Paks | Add the IBM entitlment key to the global pull secret of OCP. | ``` entitlment.sh <your IBM entitlment key>```
extract_secret_values.sh | OCP | extracct the values of different keys presnet in the secret. | ```extract_secret_values.sh <namespace> <secret name>```
get_cp_console.sh |  IBM Cloud Paks | Get the Cloud Pak console and crendential to login. | ```get_cp_console.sh```
get_cp_license_metrics.sh | IBM Cloud Paks | Collect the license metrics provide by Cloud Pak license service. | ```get_cp_license_metrics.sh ``` 
get_gitops_credentials.sh| OCP | Get the GitOps (ArgoCD) console and crendential to login.| ```get_gitops_credentials.sh```