#!/bin/bash


#Author - Akshay Gogate
# Date - 9th Sept
# Mail - akshay.gogate@gmail.com
# version : V1

# Script for tracking AWS resource usage


# AWS S3
# AWS EC2
# AWS IAM
# AWS Lambda

set -x

#list s3 buckets
echo "Print list of S3 Buckets"
aws s3 ls > resourceTracker

#list ec2 instances
echo "Print list of EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# List aws lambda functions
echo "print list of Lambda functions"
aws lambda list-functions >> resourceTracker

#List Iam users
echo "print list of IAM users"
aws iam list-users >> resourceTracker

