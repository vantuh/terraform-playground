output "api_id" {
  value = aws_api_gateway_rest_api.api.id
}

output "api_resource_id" {
  value = aws_api_gateway_resource.resource.id
}

output "api_url" {
  value = aws_api_gateway_deployment.deployment.invoke_url
}
