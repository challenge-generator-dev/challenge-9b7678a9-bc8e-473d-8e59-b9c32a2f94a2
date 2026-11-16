# Outputs del módulo de red
# Superficie de práctica - stub

output "vpc_id" {
  description = "ID de la VPC creada"
  value = null # TODO(reto): aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "Bloque CIDR de la VPC"
  value = null # TODO(reto): aws_vpc.main.cidr_block
}