# Estructura ByModule - Backend de Horarios

## Descripción
Organización del código por módulos funcionales (Security, Inventory). Cada módulo agrupa todas sus capas (Entity, Repository, Service, Controller, DTO, Utils).

## Ventajas
- Alta cohesión dentro de cada módulo
- Escalable y fácil de mantener
- Facilita el trabajo en paralelo de equipos distintos
- Ideal para microservicios o módulos independientes

## Desventajas
- Puede existir duplicación de código entre módulos
- Requiere una buena definición de límites de dominio

## Estructura de Carpetas

Proyecto/
│
├── Security/
│   ├── Entity/
│   ├── IRepository/
│   ├── IService/
│   ├── Service/
│   ├── Controller/
│   ├── DTO/
│   ├── IDTO/
│   └── Utils/
│       └── JWT/
│
└── Inventory/
    ├── Entity/
    ├── IRepository/
    ├── IService/
    ├── Service/
    ├── Controller/
    ├── DTO/
    ├── IDTO/
    └── Utils/
