provider "aws" {
    region = var.aws_region
    
}


required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "3.23.0"
  }

  random = {
    source = "hashicorp/random"
    version = "3.0.1"
  }
}