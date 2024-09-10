### VPC
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

## Load Balancer
output "ssm_load_balancer_arn" {
  description = "SSM Parameter load balancer arn"
  value       = module.load_balancer.ssm_load_balancer_arn
}

output "ssm_load_balancer_default_listener" {
  description = "SSM Parameter load balancer default listener"
  value       = module.load_balancer.ssm_load_balancer_default_listner
}

## ECS CLUSTER
output "ssm_cluster_name" {
  description = "SSM parameter ECS Cluster Name"
  value       = module.ecs.ssm_cluster_name
}

output "ssm_ecs_log_group" {
  description = "SSM parameter Log Group"
  value       = module.ecs.ssm_ecs_log_group
}