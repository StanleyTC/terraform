# Interpolation, Locals, Outputs

The objective of this project is to explain about the use of interpolations, locations and outputs, carrying out a project with these 
concepts and describing them

## Interpolation

the interpolation evaluates the expression that we pass between {} and the $, basically it would be  a  concatenation  between  strings 
with some expression, which can be a variable, or the return of a function

### How do I do an interpolation?

The first thing we will do is start with the name of the bucket, since we are going to apply all the concepts of this project in an  S3 
bucket, so the first thing we should do in this case is to use another provider, we will not just be in AWS

Step by Step:

* Go to [Terraform Registry and access Browse Providers](https://registry.terraform.io/browse/providers)
* Look for [Random provider](https://registry.terraform.io/providers/hashicorp/random/latest)
* Go to [Documentation](https://registry.terraform.io/providers/hashicorp/random/latest/docs)
* Use the resource random_pet

We will copy the example there. It will generate a random name for us to create our bucket, very simple



Finally, we will have to create a new file, random.tf, there we will use the example

Then, we can finally starting to use our interpolation in s3.tf 

## Locals

we can compare locals with the local variables of a function, to declare a local value, we should follow the example in the [documentation](https://www.terraform.io/language/values/locals).
We can use functions, interpolations, e the value of another key inside locals, we should use locals to write some variable, expression,
concatenation, tag,s that is repeating a lot, so we can use locals, everything will be in only one place.

### How do I create a locals?

we will create a file named locals.tf, and there we will define de locals block

## Outputs
Output values ​​work like the return of a function, and can be used when we are assembling a module, when we want to show something on the 
screen, or when we want to access something from the remote states, for more information, access [documentation](https://www.terraform.io/language/values/outputs)

### we will see more about remote state later
Now, we will se only at our screen, we need to create a file called outputs.tf