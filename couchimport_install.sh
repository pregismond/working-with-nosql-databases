#!/bin/bash

#/*****************************************************************
# SCRIPT: couchimport_install.sh
# AUTHOR: Pravin Regismond
# DATE: 2024-05-04
# DESCRIPTION: Exercise 1 - Getting the environment ready
#              - Check if npm is installed globally, otherwise
#                install it.
#              - Check if 'couchimport' tool is installed,
#                otherwise install it.
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

# Check if npm is installed globally
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Installing npm..."
    # Install npm globally
    curl -fsSL https://npmjs.org/install.sh | sh || error_exit "Failed to install npm"
else
    echo "npm is already installed."
fi


# Check if couchimport is installed
if command -v couchimport &>/dev/null; then
    echo "couchimport is already installed."
else
    # Install couchimport
    sudo npm install -g couchimport || error_exit "Failed to install couchimport"
fi

# Verify installation
if couchimport --version &> /dev/null; then
    echo "couchimport version:"
    couchimport --version
else
    error_exit "couchimport installation verification failed"
fi
