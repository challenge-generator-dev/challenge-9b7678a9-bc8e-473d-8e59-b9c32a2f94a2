# Variables globales para el aprovisionamiento de la infraestructura del servicio de notificaciones
# TODO(reto): Define las variables necesarias para los módulos de red y cómputo.
# Asegúrate de incluir tags para Project y Environment, y cualquier otro parámetro requerido
# por los módulos (ej: CIDR blocks, tipos de instancia, etc.).

variable "project" {
  description = "Nombre del proyecto"
  type        = string
  default     = "notification-service"
}

variable "environment" {
  description = "Entorno de despliegue (dev, prod, etc.)"
  type        = string
}

# TODO(reto): Agrega variables para la configuración de red (ej: vpc_cidr, subnet_cidrs)
# TODO(reto): Agrega variables para la configuración de cómputo (ej: instance_type, ami_id)