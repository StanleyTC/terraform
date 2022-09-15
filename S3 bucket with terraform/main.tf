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
    Managedby = "Terraform"
  }
}

/*
And here we created our first Script: A S3 bucket using terraform, now we just need to access the terminal and write terraform init, 
it will create a file, maintained automatically by "Terraform init", so we do not need to do anything over this file, and it will
create a bucket about our provider AWS

next command: terraform plan, it will create a plan, and it will be shown in our terminal, and in this case it will create a resource 
of type aws_s3_bucket, with the name we gave in the code, and the tags we defined

next command: terraform apply, when i give this command it will ask if i want to move on, i just type yes in terminal, and then it 
will create our bucket
*/
   