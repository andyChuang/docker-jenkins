#
# Jenkins image with ubuntu
#
# Pull base image.
FROM eternnoir/ubuntu-java:oracle-java8
MAINTAINER Andy Chuang "andy.chuang@mirlab.org"

ARG jenkins_version=latest

RUN apt-get update && apt-get -y upgrade  && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/$jenkins_version/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

VOLUME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
EXPOSE 52842
CMD [""]
