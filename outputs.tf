output "ssm_vpc_id" {
  description = "SSM Parameter ID to VPC ID"
  value       = module.vpc.ssm_vpc_id
}

output "ssm_public_subnets_id" {
  description = "SSM Parameter IDs to public subnets IDs"
  value       = module.vpc.ssm_public_subnets_id
}

output "ssm_private_subnets_id" {
  description = "SSM Parameter IDs to private subnets IDs"
  value       = module.vpc.ssm_private_subnets_id
}

output "ssm_database_subnets_id" {
  description = "SSM parameter IDs to database subnets IDs"
  value       = module.vpc.ssm_database_subnets_id
}

output "ssm_cluster_name" {
  description = "SSM parameter ECS Cluster Name"
  value       = module.ecs.ssm_cluster_name
}

output "ssm_ecs_log_group" {
  description = "SSM parameter Log Group"
  value       = module.ecs.ssm_ecs_log_group
}