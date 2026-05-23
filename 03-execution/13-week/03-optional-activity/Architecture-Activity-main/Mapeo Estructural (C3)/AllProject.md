# Estructura AllProject - Backend de Horarios

## Descripción
Organización del código por capas técnicas (Entity, Repository, Service, Controller, DTO, Utils), reuniendo todas las entidades del negocio dentro de cada capa.

## Ventajas
- Fácil de aplicar en proyectos pequeños/medianos
- Clara separación de responsabilidades técnicas
- Conveniente para equipos con poca experiencia en DDD o módulos

## Desventajas
- Puede volverse desordenado al crecer el proyecto
- Dificulta la modularización por dominios

## Estructura de Carpetas

Proyecto/
│
├── Entity/
│   ├── Security/
│   └── Inventory/
│
├── IRepository/
│   ├── Security/
│   └── Inventory/
│
├── IService/
│   ├── Security/
│   └── Inventory/
│
├── Service/
│   ├── Security/
│   └── Inventory/
│
├── Controller/
│   ├── Security/
│   └── Inventory/
│
├── DTO/
│   ├── Security/
│   └── Inventory/
│
├── IDTO/
│   ├── Security/
│   └── Inventory/
│
└── Utils/
    ├── JWT/
    └── ProcessInventory/
