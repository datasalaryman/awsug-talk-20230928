provider "aws" {
  region = "ap-southeast-1"
  # profile = "personal"
}

data "aws_canonical_user_id" "current" {}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}