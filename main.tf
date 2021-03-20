# ECR Repository
resource "aws_ecr_repository" "this" {
  name = var.aws_ecr_repository_name
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.aws_ecr_repository_scan_on_push
  }

  # Tagging
  tags = {
    Name           = var.aws_ecr_repository_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}