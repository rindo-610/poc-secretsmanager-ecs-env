region = "ap-northeast-1"

# vpc
cidr_vpc           = "10.0.0.0/16"
cidr_public_subnet = "10.0.1.0/24"
availability_zone  = "ap-northeast-1a"

# iam
task_role_name           = "poc-ecs-task-role"
task_execution_role_name = "poc-ecs-task-execution-role"

# ecs
cluster_name        = "poc-ecs-cluster"
cluster_family_name = "poc-ecs-task-family"
container_name      = "poc-container"
container_image     = "public.ecr.aws/nginx/nginx:latest"
env_name            = "KEY"
task_cpu            = 256
task_memory         = 512
service_name        = "poc-service"
desired_count       = 1

# secretsmanager
secret_name = "poc-secretsmanager"
secret_value = {
  "key" = "test" # PoCのためシークレット値をハードコーディングしている
}
