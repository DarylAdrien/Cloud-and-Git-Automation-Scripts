#!/bin/bash

##############################################
#Author : Daryl Adrien E

#Date : 05-09-2024

#Version : V1

#This script will report the AWS resource Usage

###############################################


#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM


#debug mode
set -x    

#list S3 Buckets
echo "Print list of S3 buckets"
aws s3 ls

#list EC2 Instances
echo "Print the EC2 instances"
aws ec2 describe-instances
#gives only the instanceId
aws ec2 decribe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "Print lambda functions"
aws lambda list-functions

#list IAM users
echo "Print the IAM users"
aws iam list-users


##############################################
#To integrate the file with crontab to run this file automatically,

#crontab -e

#* * * * * /home/user/sample.sh

#Runs for every minute

##############################################
