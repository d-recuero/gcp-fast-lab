# GCP Fabric FAST - Landing Zone Lab

Este repositorio contiene una maqueta técnica de una **Landing Zone escalable en Google Cloud**, siguiendo la metodología **Fabric FAST**. El objetivo es demostrar el uso de **YAML Factories** y la **interpolación de contexto** para automatizar la infraestructura.

## Estructura del Laboratorio (FAST)

* **`0-org-setup`**: Bootstrap y Resource Manager. Configuración de la organización y factorías de carpetas.
* **`1-vpcsc`**: Seguridad perimetral. Control de exfiltración de datos mediante VPC Service Controls.
* **`2-networking`**: Infraestructura de red. Diseño Hub-and-Spoke con Shared VPCs.
* **`2-project-factory`**: Provisión de proyectos. Despliegue automatizado de entornos de aplicación.

## Conceptos Clave Implementados

* **YAML-driven Design**: Configuración 100% declarativa fuera del código de Terraform.
* **Context Interpolation**: Uso de variables dinámicas (`$project_ids`, `$iam_principals`) para portabilidad entre entornos.
* **Shared VPC**: Configuración de proyectos de servicio conectados a una infraestructura de red centralizada.
* **VPC-SC Geo-fencing**: Niveles de acceso restringidos por geolocalización (España).

---
*Nota: Este laboratorio ha sido diseñado como ejercicio de aprendizaje para profundizar en los estándares actuales de infraestructura como código en GCP.*
