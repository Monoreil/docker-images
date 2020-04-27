FROM centos:7

RUN yum update -y && \
yum upgrade -y && \
yum install -y java-1.8.0-openjdk-devel.x86_64  

WORKDIR /javawork

#VOLUME ["/javawork"]

