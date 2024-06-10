#!/bin/bash

# Install the pre-requisistes 
dnf install -y python3-pip git
pip3 install Flask 

# Bring those code files
cd /home/ec2-user/
git clone https://github.com/Prajwalmithun/aws-path-based-alb.git

# Change the directory to the project repo
cd aws-path-based-alb/home

# Start the server/Run the app 
python3 app.py
