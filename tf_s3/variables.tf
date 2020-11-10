# VARIABLE 1
variable "bucket1_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "bucket1_bucket_acl" {
  type        = string
  default     = "private"
  description = "The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. We recommend `private` to avoid exposing sensitive information. Conflicts with `grants`."
}

variable "bucket1_versioning_bool" {
  description = "Whether versioning is enabled or not. Default is TRUE"
  type        = bool
}

variable "bucket1_lifecycle_bool" {
  description = "Whether lifecycle is enabled or not. Default is TRUE"
  type        = bool
}

# VARIABLE 2
variable "bucket2_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "bucket2_bucket_acl" {
  type        = string
  default     = "private"
  description = "The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. We recommend `private` to avoid exposing sensitive information. Conflicts with `grants`."
}

variable "bucket2_versioning_bool" {
  description = "Whether versioning is enabled or not. Default is TRUE"
  type        = bool
}

variable "bucket2_lifecycle_bool" {
  description = "Whether lifecycle is enabled or not. Default is TRUE"
  type        = bool
}

# VARIABLE 3
variable "bucket3_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "bucket3_bucket_acl" {
  type        = string
  default     = "private"
  description = "The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. We recommend `private` to avoid exposing sensitive information. Conflicts with `grants`."
}

variable "bucket3_versioning_bool" {
  description = "Whether versioning is enabled or not. Default is TRUE"
  type        = bool
}

variable "bucket3_lifecycle_bool" {
  description = "Whether lifecycle is enabled or not. Default is TRUE"
  type        = bool
}
