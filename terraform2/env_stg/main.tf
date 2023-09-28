module "asset_bucket" {
  source = "../s3-module"
  bucket_name = "test-awsug-stg"
}

module "asset_bucket_1" {
  source = "../s3-module"
  bucket_name = "test-awsug-stg-1"
}

module "asset_bucket_2" {
  source = "../s3-module"
  bucket_name = "test-awsug-stg-2"
}