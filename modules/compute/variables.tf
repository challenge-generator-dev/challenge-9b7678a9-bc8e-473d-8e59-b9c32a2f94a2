# Variables específicas para el módulo de cómputo
# TODO(reto): Define las variables necesarias para configurar el cómputo del servicio de notificaciones.
# Incluye parámetros como tipos de instancia, AMIs, nombres de recursos, etc.

variable "project" {
  description = "Nombre del proyecto"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue (dev, prod, etc.)"
  type        = string
}

# TODO(reto): Agrega variables para configuración de instancias (ej: instance_type, ami_id)
# TODO(reto): Agrega variables para configuración de auto scaling (ej: min_size, max_size)
# TODO(reto): Agrega variables para configuración de load balancers si es necesario