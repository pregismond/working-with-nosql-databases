#!/bin/bash

#/*****************************************************************
# SCRIPT: mongoimport_install.sh
# AUTHOR: Pravin Regismond
# DATE: 2024-05-04
# DESCRIPTION: Exercise 1 - Getting the environment ready
#              - Check if you have the MongoDB Database Tools
#                installed, otherwise install them.
#
#******************************************************************
# AUDIT TRAIL START                               INIT  DATE
# ----------------------------------------------  ----- -----------
# 1. Initial version                              PR    2024-05-04
#
# AUDIT TRAIL END
#******************************************************************/

# Function for error handling
function error_exit {
    echo "Error: ${1:-"Unknown Error"}" 1>&2
    exit 1
}

# Check if MongoDB Database Tools are installed
if command -v mongoimport &>/dev/null; then
    echo "MongoDB Database Tools are already installed."
else
    # Install MongoDB Database Tools
    wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz
    tar -zxvf mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz
    sudo cp -r mongodb-database-tools-ubuntu2204-x86_64-100.9.4 /usr/local/bin || error_exit "Failed to install MongoDB Database Tools"
    echo "MongoDB Database Tools installed successfully!"
fi

# Verify installation
if mongoimport --version &> /dev/null; then
    echo "MongoDB Database Tools version:"
    mongoimport --version
else
    error_exit "MongoDB Database Tools installation verification failed"
fi
