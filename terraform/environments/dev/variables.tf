variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "eu-central-1"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g. dev, prod)"
  default     = "dev"
}

variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "terraform-playground"
}

variable "lambda_memory_size" {
  type        = number
  description = "Memory size for Lambda function in MB"
  default     = 256
}

variable "lambda_timeout" {
  type        = number
  description = "Timeout for Lambda function in seconds"
  default     = 15
}

variable "log_retention_in_days" {
  type        = number
  description = "Log retention in days"
  default     = 7
}
