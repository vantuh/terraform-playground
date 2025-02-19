module "lambda" {
  source = "../../modules/lambda"

  function_name         = "${var.project_name}-lambda-${var.environment}"
  filename              = "../../../dist/lambda.zip"
  handler               = "lambda.handler"
  memory_size           = var.lambda_memory_size
  timeout               = var.lambda_timeout
  log_retention_in_days = var.log_retention_days
}

module "api" {
  source = "../../modules/api"

  api_name                   = "${var.project_name}-api-${var.environment}"
  api_description            = "API for ${var.project_name} in ${var.environment}"
  lambda_function_invoke_arn = module.lambda.lambda_function_invoke_arn
  lambda_function_name       = module.lambda.function_name
  lambda_role_name           = module.lambda.lambda_role_name
  environment                = "prod"
}
