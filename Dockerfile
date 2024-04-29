FROM centos:latest
MAINTAINER choudharysirvi1212@gmail.com

# Update the CentOS repository to version 8 and configure the YUM repositories
RUN dnf install -y epel-release && \
    dnf install -y https://repo.ius.io/ius-release-el8.rpm && \
    dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    dnf update -y && \
    dnf clean all

RUN dnf install -y httpd git && \
    git clone https://github.com/praveensirvi1212/webdev /var/www/html

WORKDIR /var/www/html
