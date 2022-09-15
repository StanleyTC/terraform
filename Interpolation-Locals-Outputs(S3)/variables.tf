
variable "aws_region" {
    type = string
    description = ""
    default = "us-east-1"
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