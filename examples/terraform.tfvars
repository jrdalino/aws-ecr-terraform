# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "shared"
environment     = "production"

# ECR Repository
aws_ecr_repository_name                 = "bbsdm-shared-service"
aws_ecr_repository_image_tag_mutability = "MUTABLE"
aws_ecr_repository_scan_on_push         = "false"