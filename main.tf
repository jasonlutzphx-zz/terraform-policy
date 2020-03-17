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

data "aws_organizations_organization" "this" {}

module "example_policy" {
  source    = "./modules/example_scp"
  target_id = data.aws_organizations_organization.this.id
}


