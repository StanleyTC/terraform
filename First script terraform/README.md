# First Script Terraform


At this project, we will have the first script that we will develop in terraform. for that, we will make use of documentation that will be necessary for the script to work.
For this, we must use this [site](https://registry.terraform.io/)
after that, we will need do acess the [browse providers](https://registry.terraform.io/browse/providers)

![browse providers](https://user-images.githubusercontent.com/95464654/190253143-59ed8a22-d548-4a11-9724-4d1e930c9db4.png)

### Browse providers
When we access the browser providers, we can see how many providers terraform has. there are some examples:
* AWS
* Azure
* Google Cloud Platform
* Kubernets
* Alibaba Cloud
* Oracle Cloud Infrastructure

![providers](https://user-images.githubusercontent.com/95464654/190253267-8d787d7c-c367-44ce-994a-921b1a61d393.png)

Now we will go AWS, and then to [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) button and we will research which aws documentation we want to use

![documetation](https://user-images.githubusercontent.com/95464654/190259502-58e44d4d-8566-4b8d-9551-fd29ce2013cb.png)


## Starting our First Script
The first thing we will need to do is create a main file, so, the main.tf at this folder is our first file for our script

### The complete code description will be there, including the first steps, so please proceed to main.tf
We will search for s3 at the documentations, and click in [aws_s3_bucket resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket),there is
a example of code with s3 bucket to generate in terraform:

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

we will use it at main.tf