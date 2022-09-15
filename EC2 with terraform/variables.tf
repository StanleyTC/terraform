#to define a variable, I put variable "", between the quotes I put the name of the variable, in this case I will name it aws_region

variable "aws_region" {
    type = string
    description = ""
    default = "us-east-1"
}

/*inside the variable block, I must inform the type, which in this case was string, I can add a description if I want, to contextualize,
and I can put the default value, in this case what I want my variable to save, in that case I defined it as us-east-1
I created a variable to define the aws_region, now I can call it in main as a variable, instead of having to write the region there, and
in case I have to write about the region again,I just call the variable, saving me time and effort */

#Now we will create a variable for our EC2 instance type, which will be given by:

variable "instance_type" {
    type = string
    description = ""
    default = "t3.micro"
}

#Finally, we will create a variable for our tags

variable "tags" {
    type = map(string)
    description = ""
    default = {
        Name = "Ubuntu"
        Project = "AWS terraform EC2"
    }
}

#let's create a variable for ami too

variable "instance_ami" {
    type = string
    description = ""
    default = data.aws_ami.ubuntu.id #we have to insert the AMI type of our EC2 instance here, here we are just working with codes, so 
}                                    #we will not use, but this code will not work withou our ami here