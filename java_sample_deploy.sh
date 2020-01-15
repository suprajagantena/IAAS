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

mvn clean package;
java -jar ebstack-0.0.1-SNAPSHOT.jar;
#8085;

#check the src/main/resources/application.properties;

#accessing the application - /api/v1/users/(create or list)
