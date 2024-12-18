#!/bin/bash 
##############################################    

# Author : Daryl Adrien E
# Date : 09-09-2024
# Version : V1
# This script will list the Collaborators of the Repository in the GitHub

###############################################

# Prompt the user for their GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME


# Prompt the user for their GitHub token (silent mode)
read -s -p "Enter your GitHub token: " TOKEN
echo  # Just to add a newline after the silent input


# Check if the repository name is passed as an argument
if [ -z "$1" ]; then  
	echo "Usage: $0 <repository-name>"
	exit 1 
fi


# Repository name passed as an argument
REPO_NAME="$1"


# GitHub API URL for listing collaborators
API_URL="https://api.github.com/repos/$GITHUB_USERNAME/$REPO_NAME/collaborators"


# Make the API request to list collaborators
response=$(curl -s -H "Authorization: token $TOKEN" $API_URL)

# Check if the response is empty or invalid
if [[ -z "$response" ]]; then
	echo "No response received. Check your access token or repo details."
	exit 1
fi


# Parse and display the login of each collaborator
echo "Collaborators for $REPO_NAME:"
echo "$response" | jq -r '.[].login'

