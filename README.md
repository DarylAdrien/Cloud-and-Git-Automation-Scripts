# Cloud and Git Automation Scripts

## Overview
This repository contains two powerful shell scripts designed to simplify cloud and GitHub automation tasks:
1. **AWS Usage Report**: A script to generate reports on AWS usage.
   
2. **GitHub API Automation**: A script which performs to get the list of collaborators of a particular Repository  using the GitHub API.

These scripts are lightweight, easy to use, and automate repetitive tasks, improving productivity and efficiency.

---

## Scripts

### 1. AWS Usage Report

- **Description**: This script fetches and generates a report on your AWS usage like the basic instances EC2,S3,IAM,Lambda functions which provides valuable insights into resource utilization.
  
- **Requirements**:
  - AWS CLI installed and configured.
  - Valid IAM credentials with permissions to access AWS usage data.
    
- **Usage**:
  ```bash
  ./report-aws-usage.sh

### Features:
- Summarizes key AWS usage metrics.
- Outputs the report in a user-friendly format.



### 2. GitHub API Automation

- **Description**: This script interacts with the GitHub API to fetch the list of collaborators of a particular repository.
  
- **Requirements**:
    - curl installed on your system.
    - A valid GitHub personal access token.
 
- **Usage**:
  ```bash
  ./github-api.sh


**Features**:
- Automates common GitHub workflows.
- Simplifies interaction with GitHub repositories and issues.



## Prerequisites

### General:

  Linux or macOS with shell scripting support.
  Internet access to communicate with AWS and GitHub APIs.
  
### For AWS Usage Report:

  AWS CLI configured with appropriate credentials.
  
### For GitHub API Automation:

GitHub personal access token with necessary permissions.


## Setup
### Clone the repository:

git clone https://github.com/darylAdrien/Cloud-and-Git-Automation-Scripts.git

cd Cloud-and-Git-Automation-Scripts

### Make the scripts executable:

chmod +x report-aws-usage.sh github-api.sh

### Configure credentials:

**AWS CLI**: Set up using aws configure.

**GitHub API**: Add your personal access token to the script or an environment variable.



## Contribution

Feel free to contribute to this repository! Open an issue or submit a pull request if you have ideas for improvement.

## License

This repository is licensed under the MIT License. See the LICENSE file for details.




