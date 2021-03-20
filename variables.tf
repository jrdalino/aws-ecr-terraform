# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# ECR Repository
variable "aws_ecr_repository_name" {
  type        = string
  description = "Required - Name of the repository."
}

variable "aws_ecr_repository_image_tag_mutability" {
  type        = string
  default     = "MUTABLE"
  description = "Optional - The tag mutability setting for the repository. Must be one of MUTABLE or IMMUTABLE. Defaults to MUTABLE."
}

variable "aws_ecr_repository_scan_on_push" {
  type        = string
  default     = "false"
  description = "Optional - Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered."
}