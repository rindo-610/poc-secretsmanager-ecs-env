output "public_subnet_id" {
  description = "パブリックサブネットのID"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "セキュリティグループのID"
  value       = aws_security_group.main.id
}
