#!/bin/bash

echo "Install RAML API Notebook script running."


# Install RAML API Notebook's Dependency Resolvers
npm install -g grunt-cli
npm install -g bower
npm install -g karma


# Install Things Needed for RAML API Notebook
# (one of these is needed for the Grunt xdg-open task)
apt-get install -y links links2 lynx w3m


# Install RAML API Notebook
cd /usr/local; git clone https://github.com/mulesoft/api-notebook.git; cd ./api-notebook


# Install RAML API Notebook's Dependencies
cd /usr/local/api-notebook; npm install;

## Run tests in the browser (requires the server to be running)
#open test/index.html
## Run headless tests
#grunt test


echo "Install RAML API Notebook script finished."