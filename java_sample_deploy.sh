#!/bin/bash
if java -version | grep -q "java version" ; then
  echo "Java installed."
else
  sudo yum install -y java-1.8.0
fi

if mvn -version | grep -q "Apache Maven" ; then
  echo "Maven Installed."
else
  sudo yum install -y maven
fi
sudo yum install -y git
mkdir springboot
cd springboot
git clone https://github.com/suprajagantena/jenkins_dsl.git
cd jenkins_dsl/SpringProjectforCICD-master/
kill -9 $(ps -aux | grep "ebstack-0.0.1-SNAPSHOT.jar" | grep -v grep | awk '{print $2}')
mvn clean package;
java -jar /home/ec2-user/springboot/jenkins_dsl/SpringProjectforCICD-master/target/ebstack-0.0.1-SNAPSHOT.jar;
#8085;

#check the src/main/resources/application.properties;

#accessing the application - /api/v1/users/(create or list)
