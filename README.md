# Aprovisionamiento de infraestructura con Terraform para el servicio de notificaciones

El objetivo de este reto es aprovisionar la red y el computo del servicio de notificaciones utilizando Terraform. Se deben usar workspaces de Terraform para separar los entornos de desarrollo y producción, no se deben usar provisioners local-exec y todos los recursos deben estar etiquetados con los tags Project y Environment. El dominio es el de un servicio de notificaciones en la nube de AWS.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Infraestructura como codigo con Terraform |
| **Nivel** | advanced-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y entregará cada archivo con su ruta.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y entregará cada archivo con su ruta. Guárdalos en la carpeta donde quieras trabajar, respetando las rutas.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no entrega todos los archivos al terminar el análisis, escríbele: "entrégame todos los archivos con su ruta".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Configuración inicial de Terraform

**Objetivo:** Configurar el entorno de Terraform para el aprovisionamiento de la infraestructura.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Configurar workspaces de Terraform para separar los entornos de desarrollo y producción.
- Etiquetar todos los recursos con los tags Project y Environment.

**Entregable:** Configuración de Terraform lista para el aprovisionamiento de la infraestructura.

<details>
<summary>Pistas de conocimiento</summary>

- Uso de workspaces en Terraform
- Etiquetado de recursos en Terraform

</details>

### Fase 2: Aprovisionamiento de la red

**Objetivo:** Aprovisionar la red del servicio de notificaciones utilizando Terraform.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Crear los recursos de red necesarios para el servicio de notificaciones en AWS.
- Asegurarse de que la red cumpla con los requisitos de seguridad y rendimiento.

**Entregable:** Red del servicio de notificaciones aprovisionada utilizando Terraform.

<details>
<summary>Pistas de conocimiento</summary>

- Creación de recursos de red en AWS con Terraform
- Requisitos de seguridad y rendimiento para la red

</details>

### Fase 3: Aprovisionamiento del computo

**Objetivo:** Aprovisionar el computo del servicio de notificaciones utilizando Terraform.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Crear los recursos de computo necesarios para el servicio de notificaciones en AWS.
- Asegurarse de que el computo cumpla con los requisitos de escalabilidad y disponibilidad.

**Entregable:** Computo del servicio de notificaciones aprovisionado utilizando Terraform.

<details>
<summary>Pistas de conocimiento</summary>

- Creación de recursos de computo en AWS con Terraform
- Requisitos de escalabilidad y disponibilidad para el computo

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es Terraform y para qué se utiliza en este reto?
- **paraQueSirve**: ¿Para qué se utilizan los workspaces de Terraform en este reto?
- **comoSeUsa**: ¿Cómo se etiquetan los recursos en Terraform en este reto?
- **erroresComunes**: ¿Cuáles son los errores comunes al aprovisionar la red y el computo con Terraform en este reto?

## Criterios de Evaluacion

- Configuración de workspaces de Terraform para separar los entornos de desarrollo y producción.
- Etiquetado de todos los recursos con los tags Project y Environment.
- Aprovisionamiento de la red del servicio de notificaciones utilizando Terraform.
- Aprovisionamiento del computo del servicio de notificaciones utilizando Terraform.

## Como trabajar con un asistente de IA

Hay dos caminos, elegi uno:

- **AGENTS.md** (recomendado) — instrucciones nativas del repo. Abri esta carpeta con tu agente local (Claude Code, Cursor, Codex, Copilot, Gemini) y las carga solo. Sabe que archivos faltan y con que comando se verifica, y completa el scaffold escribiendo en disco.
- **PROMPT_MEJORA.md** — para copiar y pegar en un chat (claude.ai, ChatGPT) si no tenes un agente en el IDE. Declara lo mismo que AGENTS.md; los archivos que te devuelva el chat los guardas en esta carpeta respetando las rutas.

Ninguno de los dos resuelve las fases del reto: eso es tu trabajo.

## Verificacion

El proyecto esta listo para trabajar cuando este comando corre sin errores:

```bash
terraform init -backend=false && terraform -chdir=modules/compute init -backend=false && terraform -chdir=modules/network init -backend=false && terraform validate && terraform -chdir=modules/compute validate && terraform -chdir=modules/network validate
```

---

*Reto generado automaticamente por Challenge Generator - Pragma*
