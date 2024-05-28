# DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure

![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/411ce6c1-03b8-4587-8eef-a889c20c7e45)
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
**Follow below steps to make your Azure DevOps Agent ready.**
<br><br/>
Install git2 
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/daf2ba58-b88d-46a4-96b1-abe18b818cef)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/3dea3320-549f-4a9e-8a02-0590b0a63a09)
Create a user demo and provide sudo privileges from sudoers file.
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/b54b918e-ae7d-4211-a444-c4b3e308756a)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/5d1d3e77-d9fa-496d-8518-f3f06617e984)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/03406d80-8dd4-4d7b-9b17-2d759e5f8970)
Install Java-17
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/d1617f4f-1dbc-4657-b29b-69cb96ba282a)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/f82e7ff3-5db1-41c4-b3a1-c7ec69399bb2)
<br><br/>
Install Maven
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/f7e8b226-e2e0-4e17-9a48-94ebc3c504fe)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/33450a6e-4b14-4dbb-bc24-42a933a435a2)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/c547f745-d0b9-4c11-9529-4ad9fb5c587b)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/75e9afe4-3f8b-4ea6-8cd7-4c153b278789)
<br><br/>
Install Docker 
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/a6f12396-85fb-49f3-aca5-a493c6c40b13)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/9adb48dd-745f-4ce6-b8e8-43e9b3710d52)
<br><br/>
Install self hosted agent pool (You can create self hosted agent pool either at Organisation level or at project level)
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/15db7543-8241-4520-b184-9c6fab24136c)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/7db89579-de30-4c40-8085-c420c71d5df4)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/eebea397-3b00-41ba-b94d-5664facfd37b)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/1ebf597f-4ff7-407d-9606-33ccd0b7e674)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/b4307317-70a5-445e-8030-4f86021191f7)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/024fb9f1-33c6-4c89-b9fe-057e904dbf5d)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/fe055dd7-f512-4465-9cbc-6eae43e81e21)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/7d540cc0-31ed-4ae6-b355-495e9e35d359)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/a122a6a4-2f61-48af-a72a-0af6ec48ec39)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/ba7886d6-f2b0-4c7d-b597-e491712b2c7b)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/d5f93b86-b8e0-44c5-a6c1-5ff06a2001d1)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/ad15d30b-12af-42cf-833e-185121845427)
<br><br/>
Copy kubeconfig from Terraform-Server to Azure DevOps Self-Hosted Agent and Install kubectl and helm
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/5346b8cc-27f9-43c6-a36b-1fe71e0a6d35)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/1237dd0b-fcb1-49e7-a4f9-f51bad1d3ad7)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/5e8ee499-017d-4bc9-9738-c3836f5edc1a)
<br><br/>
Install trivy for Docker Image Scan
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/c6311f90-26cb-4296-8205-5859b6bf9613)

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
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/90cf1b03-ae95-49af-be01-e42c26f33a9c)

<br><br/>
Add endpoint, username and password of MySQL RDS to the file login.jsp and userRegistration.jsp as shown in the screenshot below
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/13a5164c-f0db-4916-9359-6792b6b77322)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/391a16e1-901f-44ed-a119-1fc31a2667ba)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/fb0aab1e-5e39-4add-918f-5fe3bb292d0d)
<br><br/>
**Prometheus and Grafana Configuration**
<br><br/>
Using Terraform Script Prometheus and Grafana has been installed and Prometheus is kept as a source for Grafana.
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/3308fb6a-f591-443a-9373-1b4f75ab2a53)
<br><br/>
Dashboard has been imported using the ID **3119** as shown in the screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/68fe2877-1e09-4b85-9b21-f0b410f56fb2)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/53835ba3-8606-45fe-bdd0-ec0d7699d807)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/7cfd4a93-dc88-4cda-b893-d74097ca8b23)
![image](https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/assets/56765895/b2f56180-d33d-4546-8250-39f40935ffcf)








<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
**Reference:-** 
```
https://ashok198510.hashnode.dev/cloud-native-two-tier-application-deployment-with-eks-tomcat-and-rds-in-aws
https://github.com/Ashoksana/aws-rds-java
https://medium.com/@abiolamajekodunmi2011/implementing-secure-and-observant-3-tier-deployments-on-aws-using-terraform-eks-jenkins-ea2572d239e1
```
