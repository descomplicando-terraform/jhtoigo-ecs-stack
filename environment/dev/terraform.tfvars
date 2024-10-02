region       = "us-east-1"
tags         = { "Project" = "linuxtips-descomplicando-terraform", "Environment" = "dev" }
project_name = "linuxtips-tf-final"

## VPC
cidr_block         = "10.0.0.0/16"
azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets     = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
private_subnets    = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
database_subnets   = ["10.0.30.0/24", "10.0.31.0/24", "10.0.32.0/24"]
nat_gateway_active = true