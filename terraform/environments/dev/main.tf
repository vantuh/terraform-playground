module "lambda" {
  source = "../../modules/lambda"

  function_name         = "${var.project_name}-lambda-${var.environment}"
  filename              = "../../../dist/lambda.zip"
  handler               = "lambda.handler"
  memory_size           = var.lambda_memory_size
  timeout               = var.lambda_timeout
  log_retention_in_days = var.log_retention_in_days
}
