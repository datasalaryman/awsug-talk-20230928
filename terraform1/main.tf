provider "aws" {
  region = "ap-southeast-1"
  # profile = "personal" -optional if you have multiple AWS profiles
}

resource "aws_s3_bucket" "s3_bucket" {
  # bucket = "awsug_sample_bucket" -- will just tell terraform to pick a random name
}

resource "aws_s3_bucket" "s3_bucket_1" {
  # bucket = "awsug_sample_bucket" -- will just tell terraform to pick a random name
}

resource "aws_s3_bucket" "s3_bucket_2" {
  # bucket = "awsug_sample_bucket" -- will just tell terraform to pick a random name
}