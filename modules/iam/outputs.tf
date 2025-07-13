output "task_role_arn" {
  description = "ECSタスクロールのARN"
  value       = aws_iam_role.task_role.arn
}

output "task_execution_role_arn" {
  description = "ECSタスク実行ロールのARN"
  value       = aws_iam_role.task_execution_role.arn
}
