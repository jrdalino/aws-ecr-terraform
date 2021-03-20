module "ecr" {
  source = "git::https://github.com/jrdalino/aws-ecr-terraform.git?ref=master"
  aws_region              = var.aws_region
  aws_account             = var.aws_account
  aws_role                = var.aws_role
  namespace               = var.namespace
  bounded_context         = var.bounded_context
  environment             = var.environment
  aws_ecr_repository_name = var.aws_ecr_repository_name
}