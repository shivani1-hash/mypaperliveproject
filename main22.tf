terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  }
}

resource "aws_s3_bucket" "example22" {
  bucket = "shivani-test-bucket"

  tags = {
    Name        = "My bucket"
  }
}
