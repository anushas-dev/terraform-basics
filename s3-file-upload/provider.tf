terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.0"
    }
  }
}

provider "aws" {
  region = var.region
  s3_force_path_style = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true

}