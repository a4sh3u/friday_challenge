variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "bucket_acl" {
  type        = string
  default     = "private"
  description = "The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. We recommend `private` to avoid exposing sensitive information. Conflicts with `grants`."
}

variable "versioning_bool" {
  description = "Whether versioning is enabled or not. Default is TRUE"
  default     = true
  type        = bool
}

variable "lifecycle_bool" {
  description = "Whether lifecycle is enabled or not. Default is TRUE"
  default     = true
  type        = bool
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
