provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "epic_cluster" {
  name = "epic-cluster-${var.branch_name}"
}

resource "aws_ecs_task_definition" "epic_task" {
  family                = "epic-task-${var.branch_name}"
  container_definitions = jsonencode([
    {
      name      = "app"
      image     = var.docker_image
      cpu       = 256
      memory    = 512
      essential = true
    }
  ])
}

resource "aws_ecs_service" "epic_service" {
  name            = "epic-service-${var.branch_name}"
  cluster         = aws_ecs_cluster.epic_cluster.id
  task_definition = aws_ecs_task_definition.epic_task.arn
  desired_count   = 1

  network_configuration {
    subnets          = ["subnet-12345678"]  # Substitua pelo ID do seu subnet
    security_groups  = ["sg-12345678"]      # Substitua pelo ID do seu security group
    assign_public_ip = true
  }
}

output "cluster_name" {
  value = aws_ecs_cluster.epic_cluster.name
}

output "service_name" {
  value = aws_ecs_service.epic_service.name
}
