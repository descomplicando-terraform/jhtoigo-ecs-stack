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



