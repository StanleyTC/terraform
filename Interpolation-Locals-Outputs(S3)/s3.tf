#The interpolation will be used at line 4

resource "aws_s3_bucket" "my_bucket" { 
  bucket = "${random_pet.bucket.id}-${var.environment}"

    

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}
