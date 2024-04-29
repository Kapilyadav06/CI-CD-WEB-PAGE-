# Use the official CentOS base image
FROM centos:latest

# Set the maintainer information
MAINTAINER choudharysirvi1212@gmail.com

# Update the CentOS repository to version 8 and configure the YUM repositories
RUN sed -i 's/$releasever/8/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/#baseurl/baseurl/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirror.centos.org/mirrors.aliyun.com/g' /etc/yum.repos.d/CentOS-Base.repo

# Install Apache HTTP Server and Git
RUN yum install httpd git -y

# Clone your web application repository into the Apache web server root directory
RUN git clone https://github.com/praveensirvi1212/webdev /var/www/html

# Set the working directory to the Apache web server root directory
WORKDIR /var/www/html
