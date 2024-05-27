# DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure

![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/3b44f99b-0dc9-44b9-b92e-b3c0b207faab)
<br><br/>
**Connection between AWS and Azure using SIte-to-Site VPN**
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/dd9f7a99-54db-43fa-b0b1-48b75b416526)

<br><br/>
**Create Secret to be used for pull image from Azure ACR**
```
kubectl create secret docker-registry devopsmelacr132827a7-auth --docker-server=https://akscontainerregistry2405.azurecr.io --docker-username=akscontainerregistry2405 --docker-password=iXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXp -n demo
```
**Create Secret for tls cerficates to be used in Ingress Rule**
```
kubectl create secret tls ingress-secret --key mykey.key --cert STAR_singhritesh85_com.crt -n demo
```
<br><br/>
Create three service connections as shown in the screenshot below
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/1f8d2456-cb14-40c8-8936-892b5b0cc4ec)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/f2c7bc65-759e-4634-86ed-8155cf47510d)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/6426735a-538d-48a6-bdb1-45229d45adcd)
