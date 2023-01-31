FROM jenkins/jenkins:lts-jdk11
# if we want to install via apt
USER root
RUN apt-get update && apt-get install ca-certificates -y \
curl -y \
gnupg -y \
lsb-release -y   
RUN mkdir -p /etc/apk/keyrings
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN apt-get update
RUN chmod a+r /etc/apt/keyrings/docker.gpg
RUN apt-get update
RUN apt-get install docker.io -y
# drop back to the regular jenkins user - good practice
USER jenkins
