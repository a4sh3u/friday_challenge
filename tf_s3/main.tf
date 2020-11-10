terraform {
  required_version = ">= 0.13"
}

provider "aws" {
  region = "eu-central-1"
}

/*
module "bucket" {
  for_each = toset(["hourly", "daily", "weekly"])
  source   = "./modules/s3"
  bucket_name     = "crazy-berlin-weather-${each.key}"
  lifecycle_bool  = true
  versioning_bool = true
  tags = {
    Terraform     = "true"
    Bucket_Name   = "crazy-berlin-weather-${each.key}"
    }
}
*/


module "bucket1" {
  source          = "./modules/s3"
  bucket_name     = var.bucket1_name
  lifecycle_bool  = var.bucket1_lifecycle_bool
  versioning_bool = var.bucket1_versioning_bool
  bucket_acl      = var.bucket1_bucket_acl
  tags = {
    Terraform          = "true"
    Bucket_Name        = var.bucket1_name
    Lifecycle_Enabled  = var.bucket1_lifecycle_bool
    Versioning_Enabled = var.bucket1_versioning_bool
    }
}

module "bucket2" {
  source          = "./modules/s3"
  bucket_name     = var.bucket2_name
  lifecycle_bool  = var.bucket2_lifecycle_bool
  versioning_bool = var.bucket2_versioning_bool
  bucket_acl      = var.bucket2_bucket_acl
  tags = {
    Terraform          = "true"
    Bucket_Name        = var.bucket2_name
    Lifecycle_Enabled  = var.bucket2_lifecycle_bool
    Versioning_Enabled = var.bucket2_versioning_bool
    }
}

module "bucket3" {
  source          = "./modules/s3"
  bucket_name     = var.bucket3_name
  lifecycle_bool  = var.bucket3_lifecycle_bool
  versioning_bool = var.bucket3_versioning_bool
  bucket_acl      = var.bucket3_bucket_acl
  tags = {
    Terraform          = "true"
    Bucket_Name        = var.bucket3_name
    Lifecycle_Enabled  = var.bucket3_lifecycle_bool
    Versioning_Enabled = var.bucket3_versioning_bool
    }
}
