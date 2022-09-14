# first we will inform which provider we will use, in our case it is AWS, we must also inform 
#which region we will be using, in our case, by default and because it is cheaper, we will use
#us-east-1. The way to declare this in code is as follows:

provider "aws"{
    region = "us-east-1"
}

#if we do not access aws using CLI, would be necessary inform the access key and 
#secret key there:

/*
provider "aws"{
    region = "us-east-1"
    acess_key = ""
    secret_key = ""
}
*/

#over the "" we should inform that.
#This is not recommended, since it is insecure, the right thing is to access the terminal, with 
#the CLI installed, and follow the README.md step by step from this repository

#Second pas
resource "aws_s3_bucket" "my_bucket" { #At this line, I'm saying what resource i want, and what name I will give for this resource at my project
  bucket = "my-bucket020202022" #I'm creating a bucket, so, I need to give a name. I will write a lot of numbers, 020202022, to ensure this bucket is unique
  acl = "Private" #We will use the private ac
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

   