# Use the official CentOS base image
FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com

# Create the CentOS-Base.repo file
RUN echo -e "[base]\nname=CentOS-8 - Base\nbaseurl=http://mirror.centos.org/centos/8/BaseOS/x86_64/os/\ngpgcheck=1\ngpgkey=http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-8" > /etc/yum.repos.d/CentOS-Base.repo

# Update CentOS repositories to version 8 and configure YUM repositories
RUN sed -i 's/$releasever/8/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/#baseurl/baseurl/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirror.centos.org/mirrors.aliyun.com/g' /etc/yum.repos.d/CentOS-Base.repo

# Install Apache HTTP Server and Git
RUN yum install httpd git -y

# Clone the Git repository into the Apache document root
RUN git clone https://github.com/praveensirvi1212/webdev /var/www/html

# Set the working directory
WORKDIR /var/www/html
