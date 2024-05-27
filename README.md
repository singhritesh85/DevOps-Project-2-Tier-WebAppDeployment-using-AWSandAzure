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
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/f267ca35-42a8-4f24-b1ad-79a015858e40)
<br><br/>
**To Send Notification on Group Email ID go project Settings or Organisation Settings (For Global Notification) then got to Notifications and New Subscription and create a new Subscription with custom Email ID**
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/31a20cae-357e-45eb-9d51-3c17a200a3d6)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/8130da15-4162-428a-be0b-ededc97562a0)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/62e7f676-a7e6-4962-bfe3-f8bff418182e)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/34eb5ff9-49af-44f3-99e9-d4a1a82e16b2)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/9917aee3-b5b4-47bd-beb7-b1266712d84b)
<br><br/>
Adding below lines to pom.xml for storing Artifacts to Azure Artifactory
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/b51e5a2d-3c8a-4b1c-9dd4-d9fb4fc52559)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/9fe4e40f-3ad6-46dc-8205-c4e8b793b1a0)
<br><br/>
Add endpoint, username and password of MySQL RDS to the file login.jsp and userRegistration.jsp as shown in the screenshot below
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/13a5164c-f0db-4916-9359-6792b6b77322)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/391a16e1-901f-44ed-a119-1fc31a2667ba)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/fb0aab1e-5e39-4add-918f-5fe3bb292d0d)
