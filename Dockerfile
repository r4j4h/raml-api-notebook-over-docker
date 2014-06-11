FROM ubuntu:precise


# Install dependencies
RUN apt-get -y update
RUN apt-get install -y bridge-utils wget dnsmasq build-essential python nodejs nodejs-dev npm 


# Install Pre-reqs
RUN apt-get install -y git


# Install Node
ADD install/install-node.sh /usr/bin/install-node.sh
RUN install-node.sh


# Install RAML API Designer
ADD install/install-raml-api-notebook.sh /usr/bin/install-raml-api-notebook.sh
RUN install-raml-api-notebook.sh


# Run Provisioning Script
ADD install/bootstrap.sh /usr/bin/bootstrap.sh
RUN bootstrap.sh


WORKDIR /usr/local/api-notebook

EXPOSE 3000

