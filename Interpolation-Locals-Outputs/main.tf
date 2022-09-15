provider "aws" {
    region = var.aws_region
    
}


resource "aws_s3_bucket" "my_bucket" { 
  bucket = "my-bucket020202022" 
  acl = "Private" 

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}
