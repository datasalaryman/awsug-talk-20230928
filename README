# Three ways to setup your infrastructure

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

## Multiple resource config

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
