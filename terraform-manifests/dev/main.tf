terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-west-1"
}

module "infra_services" {
  source = "../modules/infra_services"
  cloud_env = "dev"
  
}
