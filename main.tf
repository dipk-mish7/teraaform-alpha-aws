terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#aws instance
resource "aws_instance" "web" {
  ami           = "ami-06ca3ca175f37dd66" 
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}