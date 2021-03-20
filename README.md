# Terraform module to provision an AWS ECR Registry

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock using https://github.com/jrdalino/aws-tfstate-backend-terraform
- AssumeRole: "OrganizationAccountAccessRole" should exist in the destination AWS account

## Terraform Module Usage
- Copy the contents of /examples folder (main.tf, ouputs.tf, state_config.tf, terraform.tfvars and variabels.tf)
- Include this repository as a module in your existing terraform code:
```
module "aws_ecr_terraform" {
  source = "git::https://github.com/jrdalino/aws-ecr-terraform.git?ref=main"
}
```
- Replace variables in state_config.tf
- Replace variables in terraform.tfvars
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform fmt
$ terraform validate
$ terraform plan
$ terraform apply
```

## Inputs
| Name | Description |
|------|-------------|
| name | Required - Name of the repository. |
| image_tag_mutability | Optional - The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE. |
| scan_on_push | Optional - Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. |

## Outputs
| Name | Description |
|------|-------------|
| arn | Repository ARN |
| name | Repository name |
| registry_id | Registry ID |
| registry_url | Registry URL |

## ECR Usage
- Retrieve the login command to use to authenticate your Docker client to your registry. Use the AWS CLI:
```
$ $(aws ecr get-login --no-include-email --region ap-southeast-2)
```

- Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:
```
$ docker build -t myproject-example-service .
```

- After the build completes, tag your image so you can push the image to this repository:
```
$ docker tag myproject-example-service:latest 222337787619.dkr.ecr.ap-southeast-2.amazonaws.com/myproject-example-service:latest
```

- Run the following command to push this image to your newly created AWS repository:
```
$ docker push 222337787619.dkr.ecr.ap-southeast-2.amazonaws.com/myproject-example-service:latest
```

## References