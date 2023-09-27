module "asset_bucket" {
  source = "../s3-module"
  bucket_name = "test-awsug-prod"
}