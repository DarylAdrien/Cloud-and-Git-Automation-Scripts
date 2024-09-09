# Shell-Scripting-Projects


1. REPORTING THE USAGE OF AWS RESOURCES 

Added the Report-AWS-Usage file which reports the basic instances like EC2,S3,IAM,Lambda functions
To run the file periodically ,Use the Crontab to automate it.
The commands are given inside the file.


2. LIST THE COLLABORATORS OF THE REPO IN GITHUB

Used the Github API in the Shell Scripting to get the list of collaborators of a particular Repo in Github.
Run the script with the Repository name as the command line argument and the script will prompt for the Username and the Token of Github.
After successfully Authenticating into the account, the Script will list only the collaborators Username (used jq command to parse the json).
