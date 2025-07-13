variable "region" {
  description = "AWSのリージョン"
  type        = string
}

# vpc
variable "cidr_vpc" {
  description = "VPCのCIDRブロック"
  type        = string
}

variable "cidr_public_subnet" {
  description = "パブリックサブネットのCIDRブロック"
  type        = string
}

variable "availability_zone" {
  description = "AZ"
  type        = string
}


# iam
variable "task_role_name" {
  description = "タスクロールの名前"
  type        = string
}

variable "task_execution_role_name" {
  description = "タスク実行ロールの名前"
  type        = string
}

# ecs
variable "cluster_name" {
  description = "ECSクラスター名"
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

variable "task_cpu" {
  description = "ECSタスクのCPU"
  type        = number
}

variable "task_memory" {
  description = "ECSタスクのメモリ"
  type        = number
}

variable "service_name" {
  description = "ECSサービス名"
  type        = string
}

variable "desired_count" {
  description = "ECSサービスの希望タスク数"
  type        = number
}

# secretsmanager
variable "secret_name" {
  description = "シークレット名"
  type        = string
}

variable "secret_value" {
  description = "シークレットの値"
  type        = string
}
