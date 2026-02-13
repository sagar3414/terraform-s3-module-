# Terraform S3 Bucket Module

[![Terraform](https://img.shields.io/badge/Terraform-v1.0+-623CE4?logo=terraform)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-S3-FF9900?logo=amazonaws)](https://aws.amazon.com/s3/)

## Overview

Production-ready Terraform module for creating secure S3 buckets with:

- ✅ Server-side encryption (AES-256)
- ✅ Versioning enabled
- ✅ Public access blocked
- ✅ Consistent tagging strategy

## Architecture
┌─────────────────────────────────────────┐
│ S3 Bucket │
├─────────────────────────────────────────┤
│ • Versioning: Enabled │
│ • Encryption: AES-256 │
│ • Public Access: Blocked │
│ • Tags: Environment, Project, Team │
└─────────────────────────────────────────┘



## Usage

```hcl
module "s3_bucket" {
  source = "github.com/YOUR_USERNAME/terraform-s3-module"

  project_name = "my-app"
  environment  = "prod"
  aws_region   = "us-east-1"
}
Inputs
Name	Description	Type	Default
aws_region	AWS region	string	us-east-1
environment	Environment (dev/staging/prod)	string	dev
project_name	Project name for resource naming	string	platform-s3-module
Outputs
Name	Description
bucket_name	Name of the S3 bucket
bucket_arn	ARN of the S3 bucket
bucket_region	Region of the S3 bucket
bucket_domain_name	Domain name of the S3 bucket
Security Features
Encryption: All objects encrypted with AES-256
Versioning: Protects against accidental deletion
Public Access Block: Prevents accidental public exposure
Tagging: Consistent tags for cost tracking and organization
Author
Sagar 

License
MIT License
