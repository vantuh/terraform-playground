resource "aws_lambda_function" "lambda" {
  function_name    = var.function_name
  filename         = var.filename
  role             = aws_iam_role.lambda_role.arn
  handler          = var.handler
  source_code_hash = filebase64sha256(var.filename)
  runtime          = var.runtime
  memory_size      = var.memory_size
  timeout          = var.timeout
}
