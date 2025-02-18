variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "terraform-playground"
}

variable "environment" {
  description = "The environment to deploy the resources"
  type        = string
  default     = "dev"
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

variable "log_retention_days" {
  description = "The retention days for the logs in CloudWatch"
  type        = number
  default     = 30
}
