FROM centos
RUN yum -y update

# Download and install Java
RUN yum -y install java-1.7.0-openjdk-devel.x86_64 
RUN yum -y install wget
RUN ["java", "-version"]

# Download and install Maven
RUN yum install -y maven || \
    ( wget http://apache.mirrors.tds.net//maven/binaries/apache-maven-${MAVEN_VERSION}-bin.zip ; unzip apache-maven-${MAVEN_VERSION}-bin.zip ; mv apache-maven-${MAVEN_VERSION} maven ; )

#Download and install git
#RUN yum install -y git

# Verify Java and Maven installations
RUN ["mvn", "-version"]
RUN ["java", "-version"]
RUN pwd

# Fetch maven deps
# Uncomment the below Maven command on initial image setup as the dependencies will be required by SoapUI; this shouldn't need re-running on subsequent runs.
COPY pom.xml /tmp/pom.xml
RUN mvn -f /tmp/pom.xml install -Dmaven.test.skip=true

VOLUME [ "/code" ]