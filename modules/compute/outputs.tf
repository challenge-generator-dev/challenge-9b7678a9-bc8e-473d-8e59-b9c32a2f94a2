# Outputs del módulo de cómputo
# Superficie de práctica - stub

output "instance_id" {
  description = "ID de la instancia EC2"
  value = null # TODO(reto): aws_instance.notification_service.id
}

output "instance_private_ip" {
  description = "IP privada de la instancia"
  value = null # TODO(reto): aws_instance.notification_service.private_ip
}