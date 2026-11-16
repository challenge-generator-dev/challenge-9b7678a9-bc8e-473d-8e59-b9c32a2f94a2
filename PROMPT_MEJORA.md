# Prompt para Mejorar el Codigo Base

Copia y pega el contenido del bloque de abajo en un asistente de IA (Claude, ChatGPT)
para obtener el proyecto completo y arrancable. Guarda los archivos que te devuelva en la
carpeta del repo, respetando exactamente las rutas.

Si preferis trabajar en tu editor con un agente local (Claude Code, Cursor, Copilot), usa `AGENTS.md` en vez de este archivo: dice lo mismo pero para que escriba los archivos en disco.

## Las dos reglas que no se negocian

1. **Completa el boilerplate.** Todo lo que el proyecto necesita para compilar y arrancar: manifiesto de dependencias, punto de entrada, configuracion, capa de interfaz, y las capas del patron arquitectonico declarado. Eso es andamiaje y es tu trabajo.
2. **NO resuelvas el reto.** Los entregables de las fases son el trabajo de la persona. El hueco pedagogico se deja como esta: el proyecto arranca, pero lo que el reto pide implementar NO esta implementado.

Dicho de otra forma: si algo impide compilar, arreglalo. Si algo es logica de negocio incompleta, validaciones ausentes, un secreto hardcodeado o un patron mejorable, dejalo exactamente como esta — es lo que la persona tiene que encontrar.

## Superficie de practica — NO resuelvas

Estos archivos SON el ejercicio de la persona. No los implementes; deja stubs.

- `main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.

## Como saber que terminaste

```bash
terraform init -backend=false && terraform -chdir=modules/compute init -backend=false && terraform -chdir=modules/network init -backend=false && terraform validate && terraform -chdir=modules/compute validate && terraform -chdir=modules/network validate
```

Ese comando corriendo sin errores es la definicion de "listo".

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter DevOps, Especialidad Ingenieria, Tecnología Terraform, Advanced L2

### Brecha de conocimiento
Aprovisionar infraestructura con Terraform

### Misión / candidato
Versionar la infraestructura del servicio de notificaciones

### Reto
- Tema: Infraestructura como codigo con Terraform
- Seniority: advanced-l2
- Tipo: practical
- Título: Aprovisionamiento de infraestructura con Terraform para el servicio de notificaciones
- Tiempo estimado: 8 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Configuración inicial de Terraform — objetivo: Configurar el entorno de Terraform para el aprovisionamiento de la infraestructura. — entregable (NO resolver): Configuración de Terraform lista para el aprovisionamiento de la infraestructura.
- Fase 2: Aprovisionamiento de la red — objetivo: Aprovisionar la red del servicio de notificaciones utilizando Terraform. — entregable (NO resolver): Red del servicio de notificaciones aprovisionada utilizando Terraform.
- Fase 3: Aprovisionamiento del computo — objetivo: Aprovisionar el computo del servicio de notificaciones utilizando Terraform. — entregable (NO resolver): Computo del servicio de notificaciones aprovisionado utilizando Terraform.

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 0 — ¿Esto es un proyecto o una carcasa?
Antes de extraer archivos, leé el Briefing (si está) y diagnosticá el adjunto.

Es CARCASA si ocurre CUALQUIERA de estas:
- No hay manifiesto de dependencias del stack del briefing (manifest.json de VTEX IO / package.json / pom.xml / build.gradle / requirements.txt / go.mod / *.tf / *.csproj, según corresponda)
- Hay un "binario" que en realidad es un comentario ("no puede ser mostrado como texto plano", placeholder .fig/.docx vacío)
- Los markdowns ya completan entregables de fases posteriores ("se implementó fade-in", lista de áreas ya resuelta)

Si es CARCASA:
- MATERIALIZÁ un proyecto que arranca en el stack del briefing (VTEX IO Store Framework, Angular, Terraform, pytest, Nest, etc.). Incluí manifiesto, punto de entrada y capa de interfaz reales.
- NO copies los markdowns de "solución" como si fueran el producto. Son ruido de generación.
- NO resuelvas las fases del briefing (están marcadas PROHIBIDO). Dejá el hueco pedagógico: el flujo existe, las microinteracciones/calidad/infra que el reto pide NO están hechas.
- Después seguí al PASO 5 (entrega de archivos).

Si es un proyecto REAL (manifiesto + código que compila o arranca):
- Seguí PASO 1 en adelante. 🔴 compilación sí. 🟡 pedagógico no.

PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Entrega de archivos
Entregá cada archivo con su ruta completa, respetando exactamente la estructura de rutas
indicada por los marcadores: un bloque por archivo, precedido por su ruta. No generes ZIPs
ni archivos adjuntos.
La entrega debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: Entregá los archivos completos al finalizar. No preguntes si el usuario
quiere recibirlos. Simplemente entregalos; No debes desplegar en el chat el resumen de lo que arreglaste, solo entregá los archivos.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación, placeholders o binarios fake, NO la reproduzcas:
aplicá PASO 0 (materializar el proyecto del briefing). Reproducir la carcasa es un fallo.
No agregues texto después del último archivo entregado
No preguntes si el usuario quiere los archivos: simplemente entregalos siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

// === ARCHIVO: versions.tf ===
terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.100.0"
    }
  }
}

// === ARCHIVO: providers.tf ===
provider "aws" {
  region = "us-east-1"
}

// === ARCHIVO: variables.tf ===
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

// === ARCHIVO: modules/network/main.tf ===
# Módulo de red para el servicio de notificaciones
# TODO(reto): Implementa los recursos de red necesarios (VPC, subnets, security groups, etc.)
# Usa las variables definidas en variables.tf de este módulo y aplica los tags Project y Environment.

# TODO(reto): implementa este bloque
# resource "aws_vpc" "main" {
#   # TODO(reto): Configura el CIDR block y habilita DNS support/hosnames
# }

# TODO(reto): Agrega recursos para subnets públicas y privadas
# TODO(reto): Agrega recursos para security groups (ej: para permitir tráfico HTTP/HTTPS)
# TODO(reto): Agrega recursos para Internet Gateway y NAT Gateway si es necesario

// === ARCHIVO: modules/network/variables.tf ===
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

// === ARCHIVO: modules/compute/main.tf ===
# Módulo de cómputo para el servicio de notificaciones
# TODO(reto): Implementa los recursos de cómputo necesarios (EC2 instances, auto scaling groups, etc.)
# Usa las variables definidas en variables.tf de este módulo y aplica los tags Project y Environment.

# TODO(reto): implementa este bloque
# resource "aws_instance" "notification_service" {
#   # TODO(reto): Configura AMI, tipo de instancia, subnets y security groups
# }

# TODO(reto): Agrega recursos para auto scaling groups si es necesario
# TODO(reto): Agrega recursos para load balancers si es necesario

// === ARCHIVO: modules/compute/variables.tf ===
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

// === ARCHIVO: modules/network/outputs.tf ===
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

// === ARCHIVO: modules/compute/outputs.tf ===
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

// === ARCHIVO: main.tf ===
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

// === ARCHIVO: outputs.tf ===
# Outputs globales del componente de infraestructura
# Expone los valores de los recursos aprovisionados para consumo externo

# TODO(reto): Exponer el VPC ID de la red aprovisionada
# Output: vpc_id

# TODO(reto): Exponer los IDs de las instancias de compute aprovisionadas
# Output: instance_ids

# TODO(reto): Agregar outputs adicionales relevantes para el servicio
# (ej: IPs privadas, URLs de endpoints, etc.)
```
