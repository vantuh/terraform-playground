output "function_arn" {
  description = "The ARN of the lambda function"
  value       = aws_lambda_function.lambda.arn
}

output "function_name" {
  description = "The name of the lambda function"
  value       = aws_lambda_function.lambda.function_name
}

output "lambda_function_invoke_arn" {
  description = "The invoke ARN of the lambda function"
  value       = aws_lambda_function.lambda.invoke_arn
}

output "lambda_role_name" {
  value       = aws_iam_role.lambda_role.name
  description = "Name of the Lambda IAM role"
}
