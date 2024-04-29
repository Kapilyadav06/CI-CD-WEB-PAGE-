FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com

# Update the CentOS repository to version 8 and configure the YUM repositories
RUN yum install -y epel-release && \
    yum install -y https://repo.ius.io/ius-release-el8.rpm && \
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    yum update -y && \
    yum clean all

RUN yum install -y httpd git && \
    git clone https://github.com/praveensirvi1212/webdev /var/www/html

WORKDIR /var/www/html
