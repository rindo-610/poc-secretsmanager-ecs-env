output "secretsmanager_secret_arn" {
  description = "Secrets ManagerのシークレットARN"
  value       = aws_secretsmanager_secret.main.arn
}
