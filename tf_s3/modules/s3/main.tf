resource "aws_s3_bucket" "modular_bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  policy = data.aws_iam_policy_document.policy_document.json
  versioning {
    enabled = var.versioning_bool
  }

  lifecycle_rule {
    enabled = var.lifecycle_bool

    noncurrent_version_transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    noncurrent_version_transition {
      days          = 60
      storage_class = "GLACIER"
    }

    noncurrent_version_expiration {
      days = 90
    }
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }

  tags = var.tags
}

data "aws_iam_policy_document" "policy_document" {
  statement {
    principals {
      type        = "*"
      identifiers = ["*"]
      }
    actions   = ["s3:*"]
    resources = ["arn:aws:s3:::${var.bucket_name}/*"]
  }
}

resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}
