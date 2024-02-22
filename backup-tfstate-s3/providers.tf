terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }
  }

    backend "s3" {
    bucket         = "tf-statelock-backup-bucket"
    # dynamodb_table = "tf-state-lock"
    key            = "backup/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }

}

provider "aws" {
  region  = "us-east-1"
  profile = "backup"
}