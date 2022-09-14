# Necessary to use terraform

as we know, there are some things that are necessary to use terraform.
As our focus is to carry out projects for AWS, it is necessary to install the CLI, so that we can run command lines and make programmatic access to AWS. To do this, we just need to enter the AWS website with an account created, download the .exe file and install it:
![image](https://user-images.githubusercontent.com/95464654/190223125-f5eca17e-9be1-4df9-9488-1565fdc9bd74.png)

After that, we must run the following command in our terminal:
aws configure
with that, it will ask us for ID, Password, which region, and the output format (in this case I will choose json) and that's it, we configure the AWS CLI on our computer.
After that, we must enter the terraform site and install it

With all this, we should be installing some IDE to type our codes, I will be making use of Visual Studio Code.
To install VS Code, just search on google, very simple, and with it installed, in the extensions part, it is necessary to download the terraform extension so that Visual Studio Code understands our code