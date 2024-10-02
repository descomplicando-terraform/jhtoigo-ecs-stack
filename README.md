# jhtoigo-ecs-stack
Repositório de groundwork, tem como finalidade criar a infraestrutura básica para subir services do ECS em um cluster ECS Fargate e disponibilizar acesso através de um Aplication Load balancer.

![](docs/stack.png)

Foram utilizados módulos prórios que podem ser acessados em:

* [VPC](https://github.com/jhtoigo/terraform-aws-vpc.git)
* [Load Balancer](https://github.com/jhtoigo/terraform-aws-load-balancer.git)
* [Cluster ECS Fargate](https://github.com/jhtoigo/terraform-aws-ecs-cluster.git)
* [ECR](https://github.com/jhtoigo/terraform-aws-ecr.git)

## TODO

* Módulo RDS

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.60 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecr"></a> [ecr](#module\_ecr) | git::https://github.com/jhtoigo/terraform-aws-ecr.git | v1.0.1 |
| <a name="module_ecs"></a> [ecs](#module\_ecs) | git::https://github.com/jhtoigo/terraform-aws-ecs-cluster.git | v1.1.2 |
| <a name="module_load_balancer"></a> [load\_balancer](#module\_load\_balancer) | git::https://github.com/jhtoigo/terraform-aws-load-balancer.git | v1.2.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/jhtoigo/terraform-aws-vpc.git | v1.3.1 |

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_service_discovery_http_namespace.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_http_namespace) | resource |
| [aws_ssm_parameter.sd_namespace_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input\_azs) | Avaibility Zones | `list(string)` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR Block for VPC | `string` | n/a | yes |
| <a name="input_database_subnets"></a> [database\_subnets](#input\_database\_subnets) | VPC database Subnets | `list(string)` | n/a | yes |
| <a name="input_nat_gateway_active"></a> [nat\_gateway\_active](#input\_nat\_gateway\_active) | Enable or not nat Gateways | `bool` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | VPC Private Subnets | `list(string)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | VPC Public Subnets | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssm_cluster_name"></a> [ssm\_cluster\_name](#output\_ssm\_cluster\_name) | SSM parameter ECS Cluster Name |
| <a name="output_ssm_database_subnets_id"></a> [ssm\_database\_subnets\_id](#output\_ssm\_database\_subnets\_id) | SSM parameter IDs to database subnets IDs |
| <a name="output_ssm_ecs_log_group"></a> [ssm\_ecs\_log\_group](#output\_ssm\_ecs\_log\_group) | SSM parameter Log Group |
| <a name="output_ssm_load_balancer_arn"></a> [ssm\_load\_balancer\_arn](#output\_ssm\_load\_balancer\_arn) | SSM Parameter load balancer arn |
| <a name="output_ssm_load_balancer_default_listener"></a> [ssm\_load\_balancer\_default\_listener](#output\_ssm\_load\_balancer\_default\_listener) | SSM Parameter load balancer default listener |
| <a name="output_ssm_private_subnets_id"></a> [ssm\_private\_subnets\_id](#output\_ssm\_private\_subnets\_id) | SSM Parameter IDs to private subnets IDs |
| <a name="output_ssm_public_subnets_id"></a> [ssm\_public\_subnets\_id](#output\_ssm\_public\_subnets\_id) | SSM Parameter IDs to public subnets IDs |
| <a name="output_ssm_sd_namespace"></a> [ssm\_sd\_namespace](#output\_ssm\_sd\_namespace) | SSM parameter service discovery namespace |
| <a name="output_ssm_vpc_id"></a> [ssm\_vpc\_id](#output\_ssm\_vpc\_id) | SSM Parameter ID to VPC ID |
<!-- END_TF_DOCS -->