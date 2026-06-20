terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "titan_bucket" {
  bucket = "terraform-titan-avinash-2026"

  tags = {
    Name        = "Titan Terraform Bucket"
    Environment = "Learning"
    Project     = "Project-Titan"
    Day         = "10"
  }
}

resource "aws_s3_bucket" "logs_bucket" {
  bucket = "terraform-titan-logs-avinash-2026"

  tags = {
    Name        = "Titan Logs Bucket"
    Environment = "Learning"
    Purpose     = "Logs"
  }
}
