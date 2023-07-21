# Adding Backend as S3 for Remote State Storage
terraform {
  backend "s3" {
    bucket = "mybucket" # replace with your bucket name
    key    = "dev/project1/terraform.tfstate"  # replace with your object key
    region = "ap-southeast-1" # replace with your bucket region

    dynamodb_table = "TerraformLocks" # replace with your DynamoDB table name
  }
}
