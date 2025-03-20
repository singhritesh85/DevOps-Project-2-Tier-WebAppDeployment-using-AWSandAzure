#!/bin/bash
/usr/sbin/useradd -s /bin/bash -m ritesh;
mkdir /home/ritesh/.ssh;
chmod -R 700 /home/ritesh;
echo "ssh-rsa XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX ritesh@DESKTOP-0XXXXXX" >> /home/ritesh/.ssh/authorized_keys;
chmod 600 /home/ritesh/.ssh/authorized_keys;
chown ritesh:ritesh /home/ritesh/.ssh -R;
echo "ritesh  ALL=(ALL)  NOPASSWD:ALL" > /etc/sudoers.d/ritesh;
chmod 440 /etc/sudoers.d/ritesh;

#################################################################### DevOps Agent ###########################################################################

useradd -s /bin/bash -m demo;
echo "Password@#795" | passwd demo --stdin;
yum install -y vim wget zip unzip
yum install java-17* git -y
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io && systemctl start docker && systemctl enable docker
chown demo:demo /var/run/docker.sock
cd /opt/ && wget https://dlcdn.apache.org/maven/maven-3/3.9.7/binaries/apache-maven-3.9.7-bin.tar.gz
tar -xvf apache-maven-3.9.7-bin.tar.gz
rm -f apache-maven-3.9.7-bin.tar.gz
mv /opt/apache-maven-3.9.7 /opt/apache-maven
cd /opt && curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin v0.38.3
echo JAVA_HOME="/usr/lib/jvm/java-17-openjdk-17.0.14.0.7-3.el8.x86_64" >> /home/demo/.bashrc
echo PATH="$PATH:$JAVA_HOME/bin:/opt/apache-maven/bin" >> /home/demo/.bashrc
echo "demo  ALL=(ALL)  NOPASSWD:ALL" >> /etc/sudoers 
yum install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm
yum install -y azure-cli

############# Install kubectl #############

curl -LO https://dl.k8s.io/release/v1.29.2/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin

############## Install Helm ################

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 --output /opt/
chmod 700 /opt/get_helm.sh
DESIRED_VERSION=v3.8.0 /opt/get_helm.sh

#reboot
helm version
kubectl version

####################################################################

mkdir /mederma;
mkfs.xfs /dev/sdc;
echo "/dev/sdc  /mederma  xfs  defaults 0 0" >> /etc/fstab;
mount -a;
