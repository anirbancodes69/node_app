#!/bin/bash

# Update Terminal
echo "Updating Terminal..."
sudo apt update

# Install the latest Node Version
echo "Installing the latest Node Version..."
sudo apt install nodejs -y

# Install Git
echo "Installing Git..."
sudo apt install git -y

# Clone the Git Repo
echo "Enter the URL of the Git repo:"
read origin_repo
echo "Cloning the Git repo..."
git clone $origin_repo

# Go to the cloned repo
echo "Enter the name of the cloned repo directory:"
read repo_dir
cd $repo_dir

# Install node modules and dependencies
echo "Installing node modules and dependencies..."
npm install

# Check the IP of the machine
echo "Your machine's IP address:"
hostname -I

# Run the app
echo "Running the app..."
npm start

# Prompt to open the app in the browser
echo "To open the app in your browser, visit: http://$(hostname -I | awk '{print $1}'):3000"
