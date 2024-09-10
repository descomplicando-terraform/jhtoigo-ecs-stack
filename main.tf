module "vpc" {
  source             = "git@github.com:jhtoigo/terraform-aws-vpc.git?ref=v1.2.0"
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
  source                       = "git@github.com:jhtoigo/terraform-aws-load-balancer.git?ref=v1.0.0"
  lb_name                      = var.project_name
  tags                         = var.tags
  region                       = var.region
  vpc_id                       = module.vpc.vpc_id
  load_balancer_public_subnets = module.vpc.public_subnets
}

module "ecs" {
  source           = "git@github.com:jhtoigo/terraform-aws-ecs-cluster.git?ref=v1.1.0"
  ecs_cluster_name = var.project_name
  project_name     = var.project_name
  resource_tags    = var.tags
}

