resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "exampletestingtginfracost" {
  bucket = "exampletestingtginfracost"

  tags = {
    Name        = "exampletestingtginfracost"
    Environment = "Dev"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Consider specifying a version constraint for better stability.
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}
