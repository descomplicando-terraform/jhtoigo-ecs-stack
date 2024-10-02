module "vpc" {
  source             = "git::https://github.com/jhtoigo/terraform-aws-vpc.git?ref=v1.3.0"
  region             = var.region
  project_name       = var.project_name
  tags               = var.tags
  azs                = var.azs
  cidr_block         = var.cidr_block
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  database_subnets   = var.database_subnets
  nat_gateway_active = var.nat_gateway_active
}

module "load_balancer" {
  source                       = "git::https://github.com/jhtoigo/terraform-aws-load-balancer.git?ref=v1.2.0"
  lb_name                      = var.project_name
  tags                         = var.tags
  region                       = var.region
  vpc_id                       = module.vpc.vpc_id
  load_balancer_public_subnets = module.vpc.public_subnets
}

module "ecs" {
  source           = "git::https://github.com/jhtoigo/terraform-aws-ecs-cluster.git?ref=v1.1.1"
  ecs_cluster_name = "cluster_1"
  project_name     = var.project_name
  resource_tags    = var.tags
}

module "ecr" {
  source         = "git::https://github.com/jhtoigo/terraform-aws-ecr.git?ref=v1.0.0"
  ecr_repository = "linuxtips-tf-final-dev-produto"
}

resource "aws_service_discovery_http_namespace" "main" {
  name        = var.project_name
  description = "Service discovery for ECS Services"
  tags        = var.tags
}

resource "aws_ssm_parameter" "sd_namespace_name" {
  name  = format("/%s/namespace", var.project_name)
  value = aws_service_discovery_http_namespace.main.name
  type  = "String"
}