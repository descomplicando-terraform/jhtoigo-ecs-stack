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
  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/16$", var.cidr_block))
    error_message = "The CIDR block must be a valid /16 range (e.g., 10.0.0.0/16)."
  }
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