terraform {
  backend "s3" {
    bucket         = "terraform-policy-jasonlutzphx"
    key            = "default/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-policy-jasonlutzphx"
    encrypt        = true
  }
}

provider "aws" {
  version = "~> 2"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "toy-resource-jasonlutzphx2"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

