output "cluster_name" {
  value       = aws_ecs_cluster.epic_cluster.name
}

output "service_name" {
  value       = aws_ecs_service.epic_service.name
}
