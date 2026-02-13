output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.platform_bucket.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.platform_bucket.arn
}

output "bucket_region" {
  description = "Region of the S3 bucket"
  value       = aws_s3_bucket.platform_bucket.region
}

output "bucket_domain_name" {
  description = "Domain name of the S3 bucket"
  value       = aws_s3_bucket.platform_bucket.bucket_domain_name
}