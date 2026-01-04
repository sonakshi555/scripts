#!/bin/bash

##################
# Author : sonu
# Date : 2026-01-04

#version : v1.0
#
# Description : This script tracks resource usage (CPU, Memory, Disk) on a Linux system.
##################

set -x # Enable debugging
set -e # Exit on error
# set -o # Catch errors in pipelines

# to get S3 buckets list
aws s3 ls

# to get EC2 instances list
aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId' --output text

# to get lambda fuction list
aws lambda list-functions

# to get iam users list
aws iam list-users

