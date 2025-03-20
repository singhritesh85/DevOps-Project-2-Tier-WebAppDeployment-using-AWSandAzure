#### Follow below steps to create the infrastructure using this terraform script
1. Clone the github repository using the command git clone https://github.com/singhritesh85/DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure.git.
2. change the directory to terraform-script-for-infra using the command cd DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/terraform-script-for-infra.
3. Now you will find three directories named as aws-setup, azure-setup and connect-azure-with-aws.
4. First of all create Azure infrastructure for that go to the directory azure-setup/main and open the file terraform.tfvars and provide the parameters as per your Azure account and run the command terraform init then terraform apply -auto-approve.
5. Then create AWS Infrastructure for that go to the directory aws-setup/main and open the file terraform.tfvars and provide the parameters as per your AWS account and run the command terraform init then terraform apply -auto-approve
6. Finally go to the directory connect-azure-with-aws/main and open file terraform.tfvars and provide the required parameters values as per the Configuration file you had downloaded from AWS Console for VPN Connection site-to-site.
7. For connectivity just install netcat on any of your Azure VM using the command yum install -y nc then run the command nc -vz "endpoint_for_PostgreSQL_RDS" 5432 or run the command nc -vz "endpoint_for_MySQL_RDS" 3306.
8. Use your own .pfx file in directory DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/terraform-script-for-infra/azure-setup/main/ and provide it's password in the file DevOps-Project-2-Tier-WebAppDeployment-using-AWSandAzure/terraform-script-for-infra/azure-setup/module/application-gateway.tf.
9. Use aks-vm-1 as a Azure DevOps Agent and aks-vm-2 as SonarQube Server. An application gateway has been created with the name of aks-application-gateway-sonarqube and SonarQube Server is used as Backend Pool of it.
10. An Aks Cluster with the name of aks-cluster has been created along with an application gateway controller with the name of app-gtw-ingress-controller.
