resource "aws_secretsmanager_secret" "main" {
  name                    = var.secret_name
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "main" {
  secret_id     = aws_secretsmanager_secret.main.id
  secret_string = var.secret_value

  lifecycle {
    ignore_changes = [
      secret_string # シークレットの値が変更されても、Terraformは更新しない
    ]
  }
}
