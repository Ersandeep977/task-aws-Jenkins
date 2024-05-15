### Jenkins Install on Debian/Ubuntu or AWS linux
## Link
```https://www.jenkins.io/doc/book/installing/linux/#debianubuntu```

## Command 
```sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
   echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
   /etc/apt/sources.list.d/jenkins.list > /dev/null
   sudo apt-get update
   sudo apt-get install jenkins
```
```
#! /bin/bash
sudo dnf update
# Jenkins Install
sudo dnf install java-17-amazon-corretto -y
java -version
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
```

## Start Jenkins
### You can enable the Jenkins service to start at boot with the command:
```sudo systemctl enable jenkins```

### You can start the Jenkins service with the command:
```sudo systemctl start jenkins```

### You can check the status of the Jenkins service using the command:
```sudo systemctl status jenkins```
