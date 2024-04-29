FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com

# Update the CentOS repository to version 8 and configure the YUM repositories
RUN yum install -y centos-release && \
    sed -i 's/$releasever/8/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/#baseurl/baseurl/g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirror.centos.org/mirrors.aliyun.com/g' /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y httpd git && \
    git clone https://github.com/praveensirvi1212/webdev /var/www/html

WORKDIR /var/www/html
