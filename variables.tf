variable "region" {
  description = "AWS Region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
}

### VPC

variable "cidr_block" {
  description = "CIDR Block for VPC"
  type        = string
}

variable "azs" {
  description = "Avaibility Zones"
  type        = list(string)
}

variable "public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
}

variable "database_subnets" {
  description = "VPC database Subnets"
  type        = list(string)
}

variable "nat_gateway_active" {
  description = "Enable or not nat Gateways"
  type        = bool
}