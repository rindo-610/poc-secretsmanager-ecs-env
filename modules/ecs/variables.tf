variable "cluster_name" {
  description = "ECSクラスター名"
  type        = string
}

variable "region" {
  description = "AWSのリージョン"
  type        = string
}

variable "cluster_family_name" {
  description = "ECSタスク定義のファミリー名"
  type        = string
}

variable "container_name" {
  description = "ECSコンテナ名"
  type        = string
}

variable "container_image" {
  description = "ECSコンテナのDockerイメージ"
  type        = string
}

variable "env_name" {
  description = "環境変数名"
  type        = string
}

variable "secretsmanager_secret_arn" {
  description = "Secrets ManagerのシークレットARN"
  type        = string
}

variable "task_cpu" {
  description = "ECSタスクのCPU"
  type        = number
}

variable "task_memory" {
  description = "ECSタスクのメモリ"
  type        = number
}

variable "task_role_arn" {
  description = "ECSタスクロールのARN"
  type        = string
}

variable "task_execution_role_arn" {
  description = "ECSタスク実行ロールのARN"
  type        = string
}

variable "service_name" {
  description = "ECSサービス名"
  type        = string
}

variable "desired_count" {
  description = "ECSサービスの希望タスク数"
  type        = number
}

variable "subnet_ids" {
  description = "ECSサービスが配置されるサブネットのID"
  type        = list(string)
}

variable "security_group_ids" {
  description = "ECSサービスに関連付けるセキュリティグループのID"
  type        = list(string)
}
