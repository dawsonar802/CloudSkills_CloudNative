terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.7"
      }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "webserver" {
  source = "./modules/ec2"

  servername = "terraformDemo123"
  size = "t3.micro"
}