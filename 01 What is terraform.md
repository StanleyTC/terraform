# What is terraform?
terraform is a tool made to build, change and version infrastructure safely and efficiently through code.

### main features:
* Infrastructure as Code (IaC)
* Open source and declarative language
* Allows versioning (makes sense, once we are using code in terraform)- it allows us to follow the evolution of the infrastructure
* High Level syntax
* Plans of execution, with security and privacy, and separation of planning and application 
* Hybrid/Agnostic - we can use multiple servers, like azure, aws, and others, and we can deploy these servers simultaneously

### About the High Level Syntax
we can plan, verify, change or destroy before we apply these alterations


### When we use:
* Create or provision a new infrastructure
* Manage existing infrastructure
* Meplicate an infrastructure

### How Terraform works: 
The Terraform uses two sources of input: configuration files (terraform script that will be written to reach the desired state),
and the current state of the infrastructure, which is managed by terraform. With this information, the core creates  a  plan to 
know which features need to be created, changed, or removed.

With this, we will have our providers, which expose resources, which makes it possible to create infrastructure:
* IaaS: AWS, GCP, Azure
* Paas: Kubernetes, Heroku, Digital Ocean
* SaaS: New Relic, Datadog