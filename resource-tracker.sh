#!/bin/bash

#Author:shravani
#Date:07 OCT
#This script will provice resource usage

set -x
#AWS S3
#AWS EC2 , IAM, LAmbda
#
#List s3 buckets
aws s3 ls > ReourceTracker

#list ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list aws lambda
aws lambda list-functions
#list IAM

aws iam list-users >> ReourceTracker
