variable "api_name" {
  type = string
}

variable "api_description" {
  type = string
}

variable "lambda_function_invoke_arn" {
  type = string
}

variable "lambda_function_name" {
  type = string
}

variable "lambda_role_name" {
  description = "Name of the Lambda IAM role"
  type        = string
}

variable "environment" {
  description = "Environment name for the API Gateway stage"
  type        = string
}
