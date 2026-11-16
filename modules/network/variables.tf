# Variables específicas para el módulo de red
# TODO(reto): Define las variables necesarias para configurar la red del servicio de notificaciones.
# Incluye parámetros como CIDR blocks, nombres de recursos, etc.

variable "project" {
  description = "Nombre del proyecto"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue (dev, prod, etc.)"
  type        = string
}

# TODO(reto): Agrega variables para CIDR blocks (ej: vpc_cidr, public_subnet_cidrs, private_subnet_cidrs)
# TODO(reto): Agrega variables para configuración de security groups (ej: allowed_ports)