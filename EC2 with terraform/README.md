# EC2 with terraform

This is the second simple project with terraform. 
Our first script aimed to create an s3 bucket through terraform, this time we will try to make an EC2 instance start

![EC2-removebg-preview](https://user-images.githubusercontent.com/95464654/190297934-df32d4c1-9317-4e42-a1f8-141a81efbef1.png)

### First Step: Resource
to start, we will enter this [link](https://registry.terraform.io/) and select [browse providers](https://registry.terraform.io/browse/providers) -> AWS, 
since we want to create an AWS resource

### Second Step: Documentation and Resource
Now we need do go in [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) button and select it

![documetation](https://user-images.githubusercontent.com/95464654/190259502-58e44d4d-8566-4b8d-9551-fd29ce2013cb.png)

Then we will search for "aws instance"

![instance](https://user-images.githubusercontent.com/95464654/190292550-c9118c0f-81d5-46ad-aaf2-f5b2235f4492.png)

Then, we will use the example code for aws that will appear:

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

We will use this code at main.tf, with provider, and we will user variables at this code.
To use variables in terraform, we will create a file to do it, the name of the file will be variables.tf