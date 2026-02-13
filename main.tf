# Random suffix for unique bucket name
resource "random_id" "suffix" {
  byte_length = 4
}

# S3 Bucket
resource "aws_s3_bucket" "platform_bucket" {
  bucket = "${var.project_name}-${var.environment}-${random_id.suffix.hex}"

  tags = {
    Name        = "${var.project_name}-bucket"
    Description = "Managed by Platform Team"
  }
}

# Enable Versioning
resource "aws_s3_bucket_versioning" "platform_bucket" {
  bucket = aws_s3_bucket.platform_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Enable Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "platform_bucket" {
  bucket = aws_s3_bucket.platform_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Block Public Access
resource "aws_s3_bucket_public_access_block" "platform_bucket" {
  bucket = aws_s3_bucket.platform_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}