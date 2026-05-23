# Estructura MVC - Backend de Horarios

## Descripción
Model-View-Controller clásico. El Modelo contiene las entidades y la lógica de negocio, la Vista corresponde a las respuestas JSON (o vistas HTML si aplica), y el Controlador maneja peticiones HTTP.

## Ventajas
- Sencillo y ampliamente conocido
- Rápido de implementar
- Adecuado para APIs REST simples o prototipos

## Desventajas
- Escalabilidad limitada
- Mezcla de responsabilidades en controladores grandes
- No es ideal para un backend complejo con múltiples dominios

## Estructura de Carpetas

Proyecto/
│
├── Model/
│   ├── Security/
│   └── Inventory/
│
├── View/
│   (Interfaces o respuesta JSON)
│
└── Controller/
    ├── Security/
    └── Inventory/
