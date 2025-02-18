variable "function_name" {
  description = "The name of the lambda function"
  type        = string
}

variable "handler" {
  description = "The handler of the lambda function"
  type        = string
  default     = "lambda.handler"
}

variable "runtime" {
  description = "The runtime of the lambda function"
  type        = string
  default     = "nodejs22.x"
}

variable "filename" {
  description = "The filename, which will be uploaded to AWS Lambda"
  type        = string
}

variable "timeout" {
  description = "The timeout of the lambda function"
  type        = number
  default     = 30
}

variable "memory_size" {
  description = "The memory size of the lambda function"
  type        = number
  default     = 256
}

variable "environment_variables" {
  description = "The environment variables of the lambda function"
  type        = map(string)
  default     = {}
}

variable "log_retention_in_days" {
  description = "The log retention in days of the lambda function"
  type        = number
  default     = 30
}
