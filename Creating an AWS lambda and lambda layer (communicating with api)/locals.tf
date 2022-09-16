Locals {
    lambdas_path = "${path.module}/lambdas"
    layers_path = "${path.module}/layers"

    common_tags = {
        Project = "Lambda Terraform"
        CreatedAt = formatdate("2022-09-14", timestamp())
        ManagedBy = "Terraform"
        Owner = "StanleyTC"
    }
}