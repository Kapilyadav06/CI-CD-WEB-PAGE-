# Use the CentOS base image
FROM centos:latest

# Update the CentOS repository and install necessary packages
RUN dnf install -y epel-release && \
    dnf install -y https://repo.ius.io/ius-release-el8.rpm && \
    dnf update -y && \
    dnf install -y \
    git \
    curl \
    wget \
    unzip \
    python3 \
    python3-pip \
    gcc \
    make \
    && dnf clean all

# Install additional packages if needed
# RUN dnf install -y <package_name>

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Expose any necessary ports
# EXPOSE <port_number>

# Define the command to run the application
# CMD ["<command>", "<arguments>"]
