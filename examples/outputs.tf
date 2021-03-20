# ECR Repository
output "arn" {
  value       = module.ecr.arn
  description = "Full ARN of the repository."
}

output "registry_id" {
  value       = module.ecr.registry_id
  description = "The registry ID where the repository was created."
}

output "repository_url" {
  value       = module.ecr.repository_url
  description = "The URL of the repository in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName"
}