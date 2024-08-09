provider "aws" {
  region = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "static_site_bucket" {
  bucket = "static-site-${var.bucket_name}"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name = "Static Site Bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "static_site_bucket" {
  bucket = aws_s3_bucket.static_site_bucket.id

  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "static_site_bucket" {
  bucket = aws_s3_bucket.static_site_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "static_site_bucket" {
  bucket = aws_s3_bucket.static_site_bucket.id
  acl = "public-read"

  depends_on = [ 
    aws_s3_bucket_public_access_block.static_site_bucket,
    aws_s3_bucket_ownership_controls.static_site_bucket,
  ]
}

