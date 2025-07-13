resource "aws_ecs_cluster" "main" {
  name   = var.cluster_name
  region = var.region
}

resource "aws_ecs_task_definition" "main" {
  family = var.cluster_family_name
  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = var.container_image

      secrets = [
        {
          name      = var.env_name
          valueFrom = var.secretsmanager_secret_arn
        }
      ]
    }
  ])
  cpu                      = var.task_cpu
  memory                   = var.task_memory
  network_mode             = "awsvpc"
  task_role_arn            = var.task_role_arn
  execution_role_arn       = var.task_execution_role_arn
  requires_compatibilities = ["FARGATE"]
  region                   = var.region
}

resource "aws_ecs_service" "main" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.main.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = var.subnet_ids
    security_groups  = var.security_group_ids
    assign_public_ip = true
  }
  enable_execute_command = true # ECS Execを有効化
}
