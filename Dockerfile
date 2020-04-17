FROM centos:7

RUN //bin//bash && \
yum update && \
yum upgrdae && \
yum install java-1.8.0-openjdk-devel.x86_64  
	

WORKDIR /javawork

