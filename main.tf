# Orquestación principal del componente de infraestructura
# Consume los módulos de red y compute para aprovisionar el servicio de notificaciones

terraform {
  # Workspace para separar entornos (dev/prod)
  # El workspace se selecciona con: terraform workspace select dev|prod
}

# Módulo de red - aprovisiona VPC y subnets
module "network" {
  source = "./modules/network"

  project      = var.project
  environment = var.environment
}

# Módulo de compute - aprovisiona las instancias del servicio
# Solo acepta project y environment según su interfaz
module "compute" {
  source = "./modules/compute"

  project      = var.project
  environment = var.environment
}

# Output para consumo externo - ID de la VPC creada
output "vpc_id" {
  description = "ID de la VPC del servicio de notificaciones"
  value       = module.network.vpc_id
}

# Output para consumo externo - ID de la instancia creada
output "instance_id" {
  description = "ID de la instancia del servicio de notificaciones"
  value       = module.compute.instance_id
}

# Output para consumo externo - IP privada de la instancia
output "instance_private_ip" {
  description = "IP privada de la instancia del servicio de notificaciones"
  value       = module.compute.instance_private_ip
}