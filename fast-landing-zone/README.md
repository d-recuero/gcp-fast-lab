# GCP Enterprise Landing Zone - Fabric FAST Skeleton

Este repositorio contiene una maqueta funcional de una **Landing Zone empresarial** en Google Cloud, siguiendo el framework **Fabric FAST**. El objetivo es demostrar la separación de capas entre la infraestructura central y el despliegue de aplicaciones.

## Arquitectura de Referencia
* **Stage 0 & 1 (Gobernanza):** Estructura jerárquica de la organización y despliegue de Service Accounts con privilegios mínimos (IAM Impersonation).
* **Stage 2 (Networking):** Topología **Hub-and-Spoke**. Implementación de red centralizada (Hub) vinculada a entornos de desarrollo mediante **VPC Peering** y salida segura vía **Cloud NAT**.
* **Stage 3 (Project Factory):** Automatización del ciclo de vida de proyectos mediante **YAML Factories**, utilizando interpolación de contextos (sintaxis `$`) para el desacoplamiento de etapas.

## Conceptos Técnicos Demostrados
* **Separación de Ciclos de Vida:** Aislamiento entre la infraestructura base (Landing Zone) y los recursos de aplicación (Mundo B).
* **Infrastructure as Code (IaC) via GitOps:** Definición de recursos mediante archivos de configuración declarativos, facilitando auditorías y escalabilidad.
* **Shared VPC Architecture:** Configuración de proyectos de servicio que consumen recursos de red centralizados.

## Diagrama Lógico
```text
[ ON-PREMISE ] <---VPN/Interconnect---> [ HUB VPC (Shared Services) ]
                                               |
                            ---------------------------------------
                            |                  |                  |
                    [ SPOKE DEV ]      [ SPOKE PROD ]      [ SPOKE QA ]
                            |
                    ( App eCommerce )