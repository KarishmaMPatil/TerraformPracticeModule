provider "aws" {
  region     = "ap-south-1"
  profile = "configs" #masking
}

terraform {
    backend "s3" {
        bucket = "s3bucketkarsighkk"
        key = "terraform.tfstate"
        dynamodb_table = "demo"
        region = "ap-south-1"
        profile = "configs"
        shared_credentials_files = ["/home/karipatil/.aws/credentials"]
    }
}