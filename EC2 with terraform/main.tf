#before we try to understand this code, let's go through variables.tf and see what's happening there, and then come back here

provider "aws"{
    region = var.aws_region      #here I called the variable I created in variables.tf with the prefix var. instead of typing
}


#we will make changes at the resource example we took from the documentation to use our variables:
resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.tags
}

/*and there we go! now we can use terraform init, REMEMBER TO insert the AMI Instance value at instance_ami variable, or it will
not work!!!
with terraform init, it will create a file, maintained automatically by "Terraform init", so we do not  need to do  anything  over 
this file, and it will create a bucket about our provider AWS

next command: terraform plan, it will create a plan, and it will be shown in our terminal, and in this case it will create a resource 
of type aws_instance, with the name we gave in the code, and the tags we defined

next command: terraform apply, when i give this command it will ask if i want to move on, i just type yes in terminal, and then it 
will create our EC2 Instance
*/