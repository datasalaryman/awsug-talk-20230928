# Three ways to setup your infrastructure

## Prerequisites

- You have a basic understanding of AWS and AWS services (we'll be using AWS S3 and AWS Route53 in this talk).
- You know how to configure your AWS CLI v2 credentials, and profile on your PC.
- You have [installed terraform](https://developer.hashicorp.com/terraform/downloads).
- You know how to work with commands on a terminal.

## Click ops

Click AWS Console until you think you got what you want. 

## Simple terraform config

Go to /terraform1 directory

```
terraform init
terraform plan
terraform apply [-auto-approve]
```

Documentation for S3 bucket arguments: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference

## Terraform modules

Go to /terraform2 directory

Directory structure:

```
terraform2/
├── env_prod
│   └── main.tf
├── env_stg
│   └── main.tf
└── s3-module
    ├── main.tf
    ├── outputs.tf
    └── variables.tf
```

And within the root directory of terraform2/:

```
terraform init
terraform plan
terraform apply [-auto-approve]
```

## Multiple resource, one config

Go to /terraform3 directory

Directory structure:

```
terraform3/
├── main.tf
├── route53-module
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
└── routes.json
```

```
terraform init
terraform plan
terraform apply [-auto-approve]
```
