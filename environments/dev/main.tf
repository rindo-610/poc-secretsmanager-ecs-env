terraform {
  required_version = "~> 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.3.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = "dev"
      Name        = "poc-secretsmanager-ecs"
      ManagedBy   = "terraform"
    }
  }
}

module "vpc" {
  source             = "../../modules/vpc"
  cidr_vpc           = var.cidr_vpc
  cidr_public_subnet = var.cidr_public_subnet
  availability_zone  = var.availability_zone
}

module "iam" {
  source                   = "../../modules/iam"
  task_role_name           = var.task_role_name
  task_execution_role_name = var.task_execution_role_name
}

module "ecs" {
  source                    = "../../modules/ecs"
  cluster_name              = var.cluster_name
  region                    = var.region
  cluster_family_name       = var.cluster_family_name
  container_name            = var.container_name
  container_image           = var.container_image
  env_name                  = var.env_name
  secretsmanager_secret_arn = module.secretsmanager.secretsmanager_secret_arn
  task_cpu                  = var.task_cpu
  task_memory               = var.task_memory
  task_role_arn             = module.iam.task_role_arn
  task_execution_role_arn   = module.iam.task_execution_role_arn
  service_name              = var.service_name
  desired_count             = var.desired_count
  subnet_ids                = [module.vpc.public_subnet_id]
  security_group_ids        = [module.vpc.security_group_id]
}

module "secretsmanager" {
  source       = "../../modules/secretsmanager"
  secret_name  = var.secret_name
  secret_value = var.secret_value
}
