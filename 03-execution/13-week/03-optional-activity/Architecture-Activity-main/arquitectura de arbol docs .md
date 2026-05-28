# Explicacion detallada de la estructura inicial

## Objetivo general de esta estructura

Esta estructura esta pensada para organizar toda la documentacion de un proyecto de software de forma clara, escalable y facil de mantener. La separacion por bloques permite que cada tema tenga su propio espacio y que no se mezclen asuntos de negocio, producto, arquitectura, datos, seguridad, pruebas u operacion.

## Leyenda de marcas

- `[PROPUESTA]`: recomendacion general de mejora.
- `[AGREGAR]`: algo nuevo que conviene incluir.
- `[CAMBIO]`: algo que conviene renombrar o reorganizar.
- `[MEJORAR]`: algo existente que deberia fortalecerse.
- `[OPCIONAL]`: algo util, pero no prioritario al inicio.
- `[BASE]`: parte minima recomendada para arrancar.
- `[REVISION]`: punto que conviene revisar para evitar problemas.
- `[DETALLE]`: explicacion del motivo o alcance del cambio.

En pocas palabras, esta estructura sirve para:

- ordenar el conocimiento del proyecto;
- facilitar la busqueda de informacion;
- asignar responsabilidades por area;
- mantener trazabilidad entre problema, solucion y ejecucion;
- permitir que el repositorio crezca sin desorden.

---

## Vista general del repositorio

### `README.md`

Es la puerta de entrada del repositorio.

### Funcion

Explica que contiene el proyecto, como esta organizado y como debe recorrerse.

### Que archivos o contenido iria aqui

- descripcion general del repositorio;
- instrucciones basicas de uso;
- mapa resumido de carpetas;
- enlaces a secciones clave.

### Por que esta separado

Porque sirve como punto inicial para cualquier persona nueva en el proyecto.

---

### `CHANGELOG.md`

Lleva el historial de cambios importantes del repositorio.

### Funcion

Registrar que se agrego, modifico o elimino con el paso del tiempo.

### Que contenido iria aqui

- nuevas secciones de documentacion;
- cambios en plantillas;
- actualizaciones de reglas o procesos.

### Por que esta separado

Porque permite saber la evolucion del proyecto sin revisar todo manualmente.

---

### `CONTRIBUTING.md`

Define como debe aportar el equipo al repositorio.

### Funcion

Establecer reglas para crear, editar y revisar documentacion.

### Que contenido iria aqui

- flujo para contribuir;
- reglas de nombres;
- estandares de escritura;
- proceso de revision.

### Por que esta separado

Porque ayuda a mantener consistencia en los aportes del equipo.

---

### `CODE_OF_CONDUCT.md`

Contiene normas de comportamiento y convivencia del equipo.

### Funcion

Promover un ambiente de trabajo respetuoso y profesional.

### Que contenido iria aqui

- reglas de conducta;
- expectativas de interaccion;
- acciones ante incumplimientos.

### Por que esta separado

Porque es una referencia institucional y no tecnica.

---

### `LICENSE`

Define las condiciones legales de uso del contenido.

### Funcion

Dejar claro como puede compartirse, modificarse o reutilizarse el repositorio.

### Que contenido iria aqui

- tipo de licencia;
- permisos;
- restricciones;
- condiciones de distribucion.

### Por que esta separado

Porque es un documento legal independiente.

---

## Carpeta `.github/`

Agrupa configuraciones y automatizaciones relacionadas con GitHub.

### Funcion general

Apoyar el flujo de colaboracion y la validacion automatica del repositorio.

### Por que esta separada

Porque contiene infraestructura del repositorio y no contenido funcional del proyecto.

### Archivos internos

#### `pull_request_template.md`

Plantilla para las solicitudes de cambio.

##### Funcion

Guiar al equipo para describir correctamente lo que modifica en una PR.

##### Que contenido iria aqui

- resumen del cambio;
- motivo;
- validaciones realizadas;
- checklist de revision.

#### `workflows/docs-lint.yml`

Automatizacion para revisar calidad de la documentacion.

##### Funcion

Detectar problemas de formato, estructura o convenciones.

##### Que contenido iria aqui

- reglas de validacion;
- acciones al hacer push o PR;
- comandos que revisan documentos.

#### `workflows/links-check.yml`

Automatizacion para revisar enlaces rotos.

##### Funcion

Verificar que los enlaces internos y externos sigan funcionando.

##### Que contenido iria aqui

- reglas de escaneo;
- rutas a revisar;
- reporte de errores.

---

## Carpeta `docs/`

Es el corazon del repositorio. Aqui vive toda la documentacion principal del proyecto.

### Por que esta separada por numeros

Porque el numero ayuda a seguir una secuencia logica, desde gobierno documental hasta archivo historico.

---

## `docs/README.md`

Es el indice principal de toda la documentacion.

### Funcion

Servir como menu central para navegar entre bloques.

### Que contenido iria aqui

- descripcion breve de cada carpeta;
- enlaces a secciones clave;
- orden de lectura sugerido.

---

## Bloque `00-documentation-governance/`

Este bloque define como se gobierna la documentacion.

### Funcion

Establecer reglas, estandares y criterios para mantener orden documental.

### Por que esta separado

Porque antes de documentar el proyecto, se necesita acordar como se va a documentar.

### Archivos y funcion

- `README.md`: explica el contenido del bloque.
- `repository-purpose.md`: define para que existe este repositorio documental.
- `documentation-rules.md`: establece reglas de escritura y organizacion.
- `naming-conventions.md`: define como nombrar archivos, carpetas y secciones.
- `folder-conventions.md`: explica como estructurar nuevas carpetas.
- `versioning-rules.md`: explica como manejar versiones de documentos.
- `review-process.md`: describe como revisar y aprobar cambios.
- `definition-of-done.md`: define cuando un documento se considera completo.

### Que otros archivos podrian agregarse

- politica de aprobacion documental;
- lineamientos de estilo;
- checklist de calidad.

### En pocas palabras

Es el bloque que dice "asi se documenta en este proyecto".

---

## Bloque `01-project-context/`

Este bloque explica el contexto general del proyecto.

### Funcion

Dar claridad sobre el problema, objetivos, limites y supuestos.

### Por que esta separado

Porque primero debe entenderse el problema antes de definir el producto o la solucion tecnica.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `initial-context.md`: describe la situacion inicial.
- `problem-space.md`: detalla el problema que se quiere resolver.
- `business-objectives.md`: presenta los objetivos del negocio.
- `scope.md`: define que si cubre el proyecto.
- `out-of-scope.md`: define que no cubre el proyecto.
- `constraints.md`: lista restricciones tecnicas, operativas o institucionales.
- `assumptions.md`: registra supuestos tomados para avanzar.
- `glossary.md`: explica terminos usados en el proyecto.

### Que otros archivos podrian agregarse

- mapa de interesados;
- contexto institucional;
- antecedentes del proyecto.

### En pocas palabras

Es el bloque que responde "que problema tenemos y bajo que condiciones lo vamos a resolver".

---

## Bloque `02-sena-domain/`

Este bloque modela el dominio del negocio.

### Funcion

Traducir el mundo real del negocio a conceptos entendibles para el equipo.

### Por que esta separado

Porque el dominio del negocio no es lo mismo que la solucion tecnica. Primero se entiende la realidad operativa.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `domain-glossary.md`: glosario especializado del dominio.
- `institutional-concepts.md`: conceptos propios de la institucion.
- `actors.md`: personas o roles que intervienen en el sistema.
- `business-rules.md`: reglas del negocio.
- `domain-boundaries.md`: define hasta donde llega el dominio modelado.

### Carpeta `examples/`

Contiene ejemplos concretos de entidades o conceptos del dominio.

#### Archivos posibles

- `aprendiz.md`: describe el rol o entidad aprendiz.
- `instructor.md`: describe el rol o entidad instructor.
- `ficha.md`: documenta la ficha de formacion.
- `ambiente-formacion.md`: documenta el ambiente de aprendizaje.
- `programa-formacion.md`: explica programas de formacion.
- `horario.md`: describe reglas y estructura de horarios.

### Que otros archivos podrian agregarse

- procesos del negocio;
- casos reales;
- escenarios excepcionales;
- modelos conceptuales del dominio.

### En pocas palabras

Es el bloque que responde "como funciona realmente el negocio".

---

## Bloque `03-product-definition/`

Aqui se define el producto que se quiere construir.

### Funcion

Convertir el problema y el dominio en una propuesta concreta de producto.

### Por que esta separado

Porque una cosa es entender el negocio y otra decidir que solucion digital se va a ofrecer.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `product-vision.md`: vision general del producto.
- `mvp-definition.md`: define la primera version viable.
- `roadmap.md`: fases de evolucion del producto.
- `user-personas.md`: perfiles tipo de usuarios.
- `user-journeys.md`: recorrido o experiencia del usuario.
- `functional-requirements.md`: funcionalidades que debe tener.
- `non-functional-requirements.md`: cualidades como rendimiento, seguridad o disponibilidad.
- `acceptance-criteria.md`: criterios generales para aceptar el producto.

### Que otros archivos podrian agregarse

- propuesta de valor;
- priorizacion de funcionalidades;
- mapa de funcionalidades.

### En pocas palabras

Es el bloque que responde "que producto vamos a construir y para quien".

---

## Bloque `04-architecture/`

Este bloque describe la arquitectura del sistema.

### Funcion

Mostrar como se organiza tecnicamente la solucion.

### Por que esta separado

Porque la arquitectura requiere decisiones tecnicas propias, distintas del negocio y del producto.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `architecture-principles.md`: principios tecnicos que guian el diseño.
- `architecture-overview.md`: panorama general de la solucion.
- `architecture-decisions-summary.md`: resumen de decisiones tomadas.
- `quality-attributes.md`: atributos esperados como escalabilidad, seguridad o mantenibilidad.
- `integration-strategy.md`: como se integrara con otros sistemas.
- `deployment-strategy.md`: como se desplegara la solucion.

### Subcarpeta `c4/`

Sirve para documentar arquitectura con el modelo C4.

- `README.md`: explicacion del uso de C4.
- `level-1-context.md`: contexto general del sistema.
- `level-2-containers.md`: contenedores o grandes bloques del sistema.
- `level-3-components.md`: componentes internos.
- `level-4-code.md`: detalle cercano al codigo si aplica.

### Subcarpeta `adr/`

Guarda decisiones arquitectonicas formales.

- `README.md`: explica el proceso de ADR.
- `proposed/`: decisiones propuestas aun no aprobadas.
- `accepted/`: decisiones aprobadas.
- `superseded/`: decisiones reemplazadas por otras.
- `rejected/`: decisiones descartadas.
- `ADR-000-template.md`: plantilla base para registrar una decision.

### Subcarpeta `diagrams/`

Centraliza diagramas tecnicos.

- `README.md`: explica como manejar los diagramas.
- `source/plantuml/`: archivos fuente PlantUML.
- `source/mermaid/`: archivos fuente Mermaid.
- `source/drawio/`: diagramas editables Draw.io.
- `exported/png/`: imagenes exportadas.
- `exported/svg/`: diagramas exportados en SVG.

### Que otros archivos podrian agregarse

- topologia de infraestructura;
- patrones usados;
- arquitectura por modulo.

### En pocas palabras

Es el bloque que responde "como esta construida tecnicamente la solucion".

---

## Bloque `05-data-architecture/`

Este bloque documenta la arquitectura de datos.

### Funcion

Definir como se estructura, almacena, relaciona y gobierna la informacion.

### Por que esta separado

Porque los datos tienen reglas, modelos y estandares que merecen su propio espacio.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `conceptual-model.md`: vista general de las entidades y relaciones.
- `logical-model.md`: definicion logica de datos.
- `relational-model.md`: adaptacion relacional para base de datos.
- `entity-catalog.md`: catalogo de entidades.
- `data-dictionary.md`: descripcion de campos, tipos y significados.
- `database-standards.md`: reglas para diseno de base de datos.
- `migration-strategy.md`: estrategia para cambios de esquema o datos.

### Subcarpeta `diagrams/`

- `erd.md`: diagrama entidad relacion.
- `mer.md`: modelo entidad relacion o material explicativo equivalente.

### Que otros archivos podrian agregarse

- catalogo de tablas;
- politicas de calidad de datos;
- reglas de integridad;
- mapa de linaje de datos.

### En pocas palabras

Es el bloque que responde "como se organiza y controla la informacion del sistema".

---

## Bloque `06-api-design/`

Este bloque define como se exponen e integran las APIs.

### Funcion

Documentar contratos, reglas y estilo de las interfaces del sistema.

### Por que esta separado

Porque las APIs son un punto de integracion clave y necesitan estandares claros.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `api-standards.md`: reglas generales para disenar APIs.
- `error-handling.md`: estandar para errores y respuestas de fallo.
- `pagination-filtering-sorting.md`: reglas para listados y consultas.
- `authentication-authorization.md`: como proteger endpoints.
- `versioning.md`: reglas de versionado de API.

### Subcarpeta `contracts/`

Guarda los contratos formales.

#### `openapi/`

Aqui irian archivos como:

- `users-api.yaml`
- `enrollments-api.yaml`
- `schedules-api.yaml`

#### `asyncapi/`

Aqui irian archivos como:

- `events-enrollment.yaml`
- `notification-bus.yaml`

### Que otros archivos podrian agregarse

- ejemplos de requests y responses;
- colecciones de prueba;
- contratos por microservicio.

### En pocas palabras

Es el bloque que responde "como se comunican otros sistemas con esta solucion".

---

## Bloque `07-security/`

Este bloque centraliza la seguridad del sistema.

### Funcion

Definir controles, riesgos y mecanismos de proteccion.

### Por que esta separado

Porque la seguridad debe verse como una disciplina transversal con documentacion propia.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `security-principles.md`: principios base de seguridad.
- `identity-access-management.md`: gestion de identidades y accesos.
- `roles-permissions.md`: roles y permisos del sistema.
- `threat-model.md`: amenazas identificadas.
- `data-protection.md`: proteccion de datos sensibles.
- `auditability.md`: trazabilidad y auditoria.
- `security-checklist.md`: lista de verificaciones.

### Que otros archivos podrian agregarse

- matriz de riesgos;
- politicas de contrasenas;
- clasificacion de informacion;
- respuesta a incidentes de seguridad.

### En pocas palabras

Es el bloque que responde "como protegemos el sistema y los datos".

---

## Bloque `08-devops/`

Este bloque cubre construccion, entrega y despliegue.

### Funcion

Definir como se desarrolla, integra, prueba y publica la solucion.

### Por que esta separado

Porque la operacion tecnica de entrega tiene procesos y estandares propios.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `repository-strategy.md`: organizacion de repositorios.
- `branching-strategy.md`: estrategia de ramas.
- `ci-cd-strategy.md`: automatizacion de integracion y despliegue.
- `environments.md`: descripcion de ambientes.
- `docker-standards.md`: lineamientos de contenedores.
- `deployment-checklist.md`: pasos previos al despliegue.
- `observability.md`: monitoreo, logs y metricas.

### Que otros archivos podrian agregarse

- convenciones de pipelines;
- manejo de secretos;
- estrategia de rollback.

### En pocas palabras

Es el bloque que responde "como construimos y desplegamos el sistema".

---

## Bloque `09-quality-assurance/`

Este bloque documenta la estrategia de calidad.

### Funcion

Definir como se valida que el sistema cumpla lo esperado.

### Por que esta separado

Porque la calidad debe planearse y no depender solo del desarrollo.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `testing-strategy.md`: estrategia general de pruebas.
- `unit-testing.md`: pruebas unitarias.
- `integration-testing.md`: pruebas de integracion.
- `e2e-testing.md`: pruebas de punta a punta.
- `performance-testing.md`: pruebas de rendimiento.
- `accessibility-testing.md`: pruebas de accesibilidad.
- `quality-gates.md`: condiciones minimas para aprobar entregas.

### Que otros archivos podrian agregarse

- plan maestro de pruebas;
- matriz de cobertura;
- criterios de salida por ambiente.

### En pocas palabras

Es el bloque que responde "como comprobamos que el sistema funciona bien".

---

## Bloque `10-user-experience/`

Este bloque cubre la experiencia de usuario.

### Funcion

Definir como se organiza la informacion y como interactua el usuario con el producto.

### Por que esta separado

Porque la UX tiene decisiones de navegacion, contenido, accesibilidad y diseño que no deben mezclarse con la arquitectura tecnica.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `ux-principles.md`: principios de experiencia de usuario.
- `information-architecture.md`: estructura de contenidos y secciones.
- `navigation-model.md`: modelo de navegacion.
- `wireframes.md`: bosquejos o estructuras de pantallas.
- `design-system.md`: reglas visuales y componentes.
- `accessibility-guidelines.md`: lineamientos de accesibilidad.

### Que otros archivos podrian agregarse

- flujos de pantalla;
- mockups;
- inventario de componentes;
- pruebas con usuarios.

### En pocas palabras

Es el bloque que responde "como vivira el usuario el producto".

---

## Bloque `11-backlog/`

Este bloque organiza el trabajo pendiente y planificado.

### Funcion

Gestionar requerimientos y tareas de forma trazable.

### Por que esta separado

Porque el backlog cambia constantemente y necesita un espacio propio para planificacion.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `epics/`: grandes bloques funcionales.
- `features/`: capacidades concretas del producto.
- `user-stories/`: historias de usuario detalladas.
- `tasks/`: tareas tecnicas u operativas.
- `traceability-matrix.md`: relacion entre objetivos, requisitos, historias y tareas.

### Plantillas incluidas

- `HU-000-template.md`: plantilla de historia de usuario.
- `TASK-000-template.md`: plantilla de tarea.

### Que otros archivos podrian agregarse

- criterios de priorizacion;
- estado del backlog;
- dependencias entre entregables.

### En pocas palabras

Es el bloque que responde "que trabajo hay que hacer y como se sigue".

---

## Bloque `12-microservices/`

Este bloque se usa si la solucion esta dividida en microservicios.

### Funcion

Documentar cada servicio de manera independiente pero consistente.

### Por que esta separado

Porque cada microservicio puede tener responsabilidades, datos, APIs y despliegues distintos.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `microservice-catalog.md`: lista de microservicios existentes.

### Carpeta `microservice-template/`

Es la plantilla base para documentar un servicio nuevo.

- `README.md`: instrucciones del uso de la plantilla.
- `service-context.md`: contexto del servicio.
- `service-responsibilities.md`: responsabilidades del servicio.
- `service-boundaries.md`: limites del servicio.
- `service-api.md`: interfaz del servicio.
- `service-data-model.md`: datos propios del servicio.
- `service-security.md`: controles de seguridad del servicio.
- `service-deployment.md`: despliegue del servicio.
- `service-testing.md`: pruebas del servicio.
- `service-runbook.md`: operacion y soporte del servicio.

### Carpeta `services/`

Aqui se agregarian carpetas reales por cada microservicio, por ejemplo:

- `services/auth-service/`
- `services/schedule-service/`
- `services/enrollment-service/`

### En pocas palabras

Es el bloque que responde "como documentamos cada servicio individual de la solucion".

---

## Bloque `13-operations/`

Este bloque cubre la operacion diaria del sistema.

### Funcion

Dar guias para mantener el sistema estable en ambientes reales.

### Por que esta separado

Porque operar un sistema en produccion requiere procedimientos distintos al desarrollo.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `runbooks.md`: procedimientos operativos paso a paso.
- `incident-management.md`: manejo de incidentes.
- `backup-restore.md`: respaldo y recuperacion.
- `monitoring-alerting.md`: monitoreo y alertas.
- `support-model.md`: modelo de soporte y escalamiento.

### Que otros archivos podrian agregarse

- procedimientos de contingencia;
- calendario de mantenimiento;
- acuerdos de nivel de servicio.

### En pocas palabras

Es el bloque que responde "como se mantiene el sistema funcionando en el dia a dia".

---

## Bloque `14-training-and-adoption/`

Este bloque esta enfocado en capacitacion y adopcion.

### Funcion

Ayudar a que usuarios, instructores y administradores aprendan a usar el sistema.

### Por que esta separado

Porque la adopcion del producto requiere materiales distintos a la documentacion tecnica.

### Archivos y funcion

- `README.md`: resumen del bloque.
- `user-manual.md`: manual de usuario final.
- `instructor-guide.md`: guia para instructores.
- `administrator-guide.md`: guia para administradores.
- `onboarding.md`: material de entrada para nuevos usuarios o equipos.
- `faq.md`: preguntas frecuentes.

### Que otros archivos podrian agregarse

- tutoriales;
- guias rapidas;
- material para capacitaciones;
- casos de uso frecuentes.

### En pocas palabras

Es el bloque que responde "como logramos que la gente aprenda y adopte la solucion".

---

## Bloque `99-archive/`

Este bloque guarda documentacion historica o ya no vigente.

### Funcion

Conservar referencias antiguas sin mezclarlas con lo actual.

### Por que esta separado

Porque evita confusiones entre contenido vigente y contenido obsoleto.

### Archivos y carpetas

- `README.md`: explica como se usa el archivo historico.
- `deprecated/`: documentos ya no recomendados.
- `legacy/`: documentos heredados que se conservan por referencia.

### Que otros archivos podrian agregarse

- versiones antiguas de propuestas;
- decisiones obsoletas;
- diseños anteriores.

### En pocas palabras

Es el bloque que responde "que material viejo se conserva sin afectar la version actual".

---

## Carpeta `templates/`

Aqui se guardan plantillas reutilizables.

### Funcion

Evitar que cada documento se cree desde cero y mantener uniformidad.

### Por que esta separada

Porque las plantillas sirven a multiples bloques del repositorio.

### Archivos y funcion

- `README.md`: explica que plantillas existen.
- `adr-template.md`: plantilla para decisiones arquitectonicas.
- `hu-template.md`: plantilla de historia de usuario.
- `api-contract-template.md`: plantilla de contrato de API.
- `microservice-doc-template.md`: plantilla de documentacion de microservicio.
- `runbook-template.md`: plantilla de procedimiento operativo.
- `test-plan-template.md`: plantilla de plan de pruebas.
- `risk-template.md`: plantilla para riesgos.
- `decision-log-template.md`: plantilla de registro de decisiones.

### Que otros archivos podrian agregarse

- plantilla de requisito;
- plantilla de matriz de trazabilidad;
- plantilla de modelo de datos.

### En pocas palabras

Es la caja de formatos base del proyecto.

---

## Carpeta `assets/`

Aqui van recursos visuales y materiales de apoyo.

### Funcion

Centralizar elementos graficos usados en la documentacion.

### Por que esta separada

Porque los recursos visuales no deben dispersarse entre carpetas de texto.

### Archivos y carpetas

- `README.md`: explica como organizar recursos visuales.
- `images/`: capturas, ilustraciones, mockups, diagramas exportados.
- `icons/`: iconos usados en documentacion o presentaciones.
- `exports/`: archivos exportados para compartir o publicar.

### Que otros archivos podrian agregarse

- logos;
- banners;
- versiones editables de recursos.

### En pocas palabras

Es la carpeta de apoyo visual del repositorio.

---

## Carpeta `tools/`

Contiene scripts utilitarios para mantenimiento del repositorio.

### Funcion

Automatizar tareas repetitivas relacionadas con la documentacion.

### Por que esta separada

Porque son herramientas de soporte, no contenido funcional.

### Archivos y funcion

- `README.md`: explica que herramientas existen y como usarlas.
- `validate-docs.ps1`: revisa estructura o calidad documental.
- `validate-links.ps1`: verifica enlaces.
- `generate-index.ps1`: genera un indice o resumen navegable.

### Que otros archivos podrian agregarse

- scripts de generacion de reportes;
- conversion de formatos;
- validadores de nombres o carpetas.

### En pocas palabras

Es la caja de herramientas para mantener el repositorio sano.

---

## Por que esta estructura tiene valor

La separacion por bloques tiene varias ventajas:

- cada area del proyecto tiene un lugar claro;
- evita mezclar negocio con tecnologia;
- mejora la trazabilidad desde el problema hasta la operacion;
- facilita el trabajo entre roles distintos;
- permite crecer sin perder orden;
- ayuda a auditar, revisar y actualizar informacion.

---

## Resumen final

En conjunto, esta estructura no solo guarda documentos: organiza el conocimiento completo del proyecto. Cada bloque existe porque responde una pregunta distinta:

- contexto: por que existe el proyecto;
- dominio: como funciona el negocio;
- producto: que se va a construir;
- arquitectura: como se va a construir;
- datos: como se organizara la informacion;
- API: como se integrara;
- seguridad: como se protegera;
- devops: como se desplegara;
- calidad: como se validara;
- UX: como lo vivira el usuario;
- backlog: que trabajo falta;
- microservicios: como se documenta cada servicio;
- operaciones: como se mantiene en produccion;
- adopcion: como aprenderan a usarlo;
- archivo: que queda como historico.

En pocas palabras, es una estructura pensada para que el proyecto sea entendible, mantenible y escalable.

---

## [PROPUESTA] Recomendaciones de mejora sugeridas

En esta seccion se marcan ideas que yo agregaria, simplificaria o dejaria como opcionales segun el tamano real del proyecto.

### [PROPUESTA] Cosas que agregaria

#### [AGREGAR] 1. Carpeta o bloque de riesgos

Yo agregaria una seccion dedicada a riesgos del proyecto, por ejemplo:

- `15-risk-management/`
- `risk-register.md`
- `technical-risks.md`
- `business-risks.md`
- `mitigation-plan.md`

### [DETALLE] Para que serviria

Permite registrar riesgos funcionales, tecnicos, operativos o institucionales, junto con su impacto y plan de mitigacion.

### [DETALLE] Por que lo agregaria

Porque en muchos proyectos los riesgos terminan dispersos entre actas, backlog o conversaciones, y tenerlos centralizados mejora la gestion.

#### [AGREGAR] 2. Carpeta de decisiones funcionales o de negocio

Ademas de los ADR tecnicos, agregaria un bloque como:

- `16-decision-log/`
- `business-decisions.md`
- `functional-decisions.md`
- `open-questions.md`

### [DETALLE] Para que serviria

Guardar decisiones importantes que no son tecnicas, por ejemplo reglas del negocio acordadas con el cliente o cambios de enfoque del producto.

### [DETALLE] Por que lo agregaria

Porque no todas las decisiones importantes caben en arquitectura, y muchas veces luego se pierde el contexto de por que se aprobo algo.

#### [AGREGAR] 3. Carpeta de reuniones o evidencias

Si el proyecto es academico o requiere trazabilidad fuerte, agregaria algo como:

- `17-working-notes/`
- `meeting-notes/`
- `workshops/`
- `approvals/`

### [DETALLE] Para que serviria

Guardar actas, acuerdos, hallazgos de sesiones de trabajo y evidencias de validacion.

### [DETALLE] Por que lo agregaria

Porque ayuda mucho cuando luego hay que justificar decisiones o mostrar avance.

#### [MEJORAR] 4. Mapa de trazabilidad mas visible

Aunque ya existe `traceability-matrix.md`, yo reforzaria su importancia y la conectaria explicitamente con:

- objetivos de negocio;
- requisitos funcionales;
- historias de usuario;
- pruebas;
- despliegues o entregas.

### [DETALLE] Por que lo agregaria

Porque vuelve mucho mas facil demostrar que cada necesidad tiene desarrollo, validacion y evidencia.

---

### [PROPUESTA] Cosas que simplificaria o dejaria opcionales

#### [CAMBIAR] 1. `12-microservices/`

Si el proyecto no va a trabajar con microservicios reales, no lo dejaria obligatorio desde el inicio.

### [DETALLE] Que haria

Lo dejaria como bloque opcional o lo renombraria a algo mas general como:

- `12-service-design/`

### [DETALLE] Por que

Porque si la solucion va a ser monolitica o modular simple, hablar de microservicios desde el inicio puede sobredimensionar la documentacion.

#### [OPCIONAL] 2. `14-training-and-adoption/`

Si el sistema aun esta en etapa temprana, este bloque puede quedar vacio mucho tiempo.

### [DETALLE] Que haria

Lo mantendria, pero como bloque de segunda fase, para llenarlo cuando ya existan pantallas, procesos estables y usuarios reales.

### [DETALLE] Por que

Porque la capacitacion tiene mas sentido cuando el producto ya esta definido y usable.

#### [OPCIONAL] 3. `99-archive/` al inicio

No lo quitaria del todo, pero tampoco lo veria como prioridad inicial.

### [DETALLE] Que haria

Lo dejaria creado, pero sin dedicarle esfuerzo hasta que realmente existan versiones obsoletas o documentos heredados.

### [DETALLE] Por que

Porque al arrancar un proyecto nuevo todavia no suele haber suficiente material historico como para justificar ese espacio.

---

### [REVISION] Cosas que revisaria para evitar exceso de documentacion

#### [REVISION] 1. No separar demasiado si el proyecto es pequeno

Si el proyecto es pequeno o academico, algunos bloques podrian fusionarse:

- `07-security/` con `04-architecture/`
- `08-devops/` con `13-operations/`
- `09-quality-assurance/` con parte del backlog o de criterios de aceptacion

### [DETALLE] Por que lo revisaria

Porque demasiadas carpetas vacias pueden hacer que la estructura se vea muy completa, pero dificil de mantener.

#### [REVISION] 2. Evitar duplicados entre bloques

Por ejemplo:

- reglas del negocio no deberian repetirse igual en dominio y requisitos;
- seguridad no deberia repetirse igual en arquitectura, APIs y operaciones;
- criterios de aceptacion no deberian estar duplicados entre producto, historias y QA.

### [DETALLE] Por que lo revisaria

Porque cuando una misma idea aparece en muchos lugares, luego es dificil actualizarla sin inconsistencias.

---

### [PROPUESTA] Recomendacion practica final

Si este repositorio se va a usar de verdad, yo lo dejaria en dos niveles:

- nivel base obligatorio;
- nivel extendido opcional.

### [BASE] Nivel base obligatorio

- `00-documentation-governance/`
- `01-project-context/`
- `02-sena-domain/`
- `03-product-definition/`
- `04-architecture/`
- `05-data-architecture/`
- `06-api-design/`
- `11-backlog/`

### [OPCIONAL] Nivel extendido opcional

- `07-security/`
- `08-devops/`
- `09-quality-assurance/`
- `10-user-experience/`
- `12-microservices/`
- `13-operations/`
- `14-training-and-adoption/`
- `99-archive/`
- `15-risk-management/`
- `16-decision-log/`
- `17-working-notes/`

### [PROPUESTA] Conclusion de mejora

La estructura que tienes esta bien pensada y es bastante completa. Lo que yo haria no es quitarle valor, sino ajustarla al tamano real del proyecto: agregar gestion de riesgos, registro de decisiones no tecnicas y evidencias de trabajo; y dejar algunos bloques avanzados como opcionales para no sobrecargar el repositorio desde el principio.

---

## [PROPUESTA] Version optimizada final del arbol propuesta

A continuacion dejo una propuesta de estructura mejorada, pensada para que siga siendo completa, pero mas realista, mantenible y util desde el inicio.

```text
design-software-docs/
│
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
├── LICENSE
│
├── .github/
│   ├── pull_request_template.md
│   └── workflows/
│       ├── docs-lint.yml
│       └── links-check.yml
│
├── docs/
│   ├── README.md
│   │
│   ├── 00-documentation-governance/
│   ├── 01-project-context/
│   ├── 02-sena-domain/
│   ├── 03-product-definition/
│   ├── 04-architecture/
│   ├── 05-data-architecture/
│   ├── 06-api-design/
│   ├── 07-security/
│   ├── 08-quality-and-testing/
│   ├── 09-devops-and-operations/
│   ├── 10-user-experience/
│   ├── 11-backlog/
│   ├── 12-service-design/
│   ├── 13-risk-management/
│   ├── 14-decision-log/
│   ├── 15-training-and-adoption/
│   ├── 16-working-notes/
│   └── 99-archive/
│
├── templates/
│   ├── README.md
│   ├── adr-template.md
│   ├── hu-template.md
│   ├── api-contract-template.md
│   ├── microservice-doc-template.md
│   ├── runbook-template.md
│   ├── test-plan-template.md
│   ├── risk-template.md
│   └── decision-log-template.md
│
├── assets/
│   ├── README.md
│   ├── images/
│   ├── icons/
│   └── exports/
│
└── tools/
    ├── README.md
    ├── validate-docs.ps1
    ├── validate-links.ps1
    └── generate-index.ps1
```

---

## [PROPUESTA] Que cambios hice en esta version optimizada

### [CAMBIO] 1. Cambie `09-quality-assurance/` por `08-quality-and-testing/`

### [DETALLE] Por que

Ese nombre es mas claro para equipos mixtos porque comunica mejor que ahi van estrategia de calidad y pruebas.

### [DETALLE] Que incluiria

- estrategia de pruebas;
- pruebas unitarias;
- pruebas de integracion;
- pruebas e2e;
- rendimiento;
- accesibilidad;
- quality gates.

---

### [CAMBIO] 2. Uni `08-devops/` y `13-operations/` en `09-devops-and-operations/`

### [DETALLE] Por que

En muchos proyectos pequenos o medianos estos temas van muy juntos: ambientes, despliegue, monitoreo, incidentes y soporte.

### [DETALLE] Que incluiria

- estrategia CI/CD;
- ambientes;
- despliegues;
- observabilidad;
- runbooks;
- backup y restore;
- monitoreo;
- soporte.

---

### [CAMBIO] 3. Cambie `12-microservices/` por `12-service-design/`

### [DETALLE] Por que

Ese nombre es mas flexible. Sirve tanto si el sistema termina siendo monolitico modular como si luego evoluciona a microservicios.

### [DETALLE] Que incluiria

- catalogo de servicios o modulos;
- plantilla de servicio;
- responsabilidades;
- limites;
- API;
- datos;
- seguridad;
- despliegue.

---

### [AGREGAR] 4. Agregue `13-risk-management/`

### [DETALLE] Por que

Los riesgos suelen existir desde el inicio, pero muchas veces no se documentan bien.

### [DETALLE] Que incluiria

- registro de riesgos;
- riesgos tecnicos;
- riesgos funcionales;
- impacto;
- probabilidad;
- mitigaciones;
- responsables.

---

### [AGREGAR] 5. Agregue `14-decision-log/`

### [DETALLE] Por que

No todas las decisiones importantes son arquitectonicas. Algunas son funcionales, organizativas o de alcance.

### [DETALLE] Que incluiria

- decisiones de producto;
- decisiones de negocio;
- acuerdos funcionales;
- dudas abiertas;
- historial de cambios de enfoque.

---

### [AGREGAR] 6. Agregue `16-working-notes/`

### [DETALLE] Por que

Sirve mucho para proyectos academicos o de equipo, donde conviene guardar actas, evidencias y acuerdos de trabajo.

### [DETALLE] Que incluiria

- notas de reunion;
- talleres;
- acuerdos;
- evidencias de validacion;
- aprobaciones.

---

### [OPCIONAL] 7. Deje `15-training-and-adoption/` y `99-archive/` como bloques validos, pero no prioritarios

### [DETALLE] Por que

Siguen siendo utiles, pero normalmente se llenan mas adelante cuando el sistema ya madura.

---

## [PROPUESTA] Estructura recomendada por prioridad

### [BASE] Bloques que yo implementaria primero

- `00-documentation-governance/`
- `01-project-context/`
- `02-sena-domain/`
- `03-product-definition/`
- `04-architecture/`
- `05-data-architecture/`
- `06-api-design/`
- `11-backlog/`
- `13-risk-management/`
- `14-decision-log/`

### [OPCIONAL] Bloques que implementaria despues

- `07-security/`
- `08-quality-and-testing/`
- `09-devops-and-operations/`
- `10-user-experience/`
- `12-service-design/`
- `15-training-and-adoption/`
- `16-working-notes/`
- `99-archive/`

---

## [PROPUESTA] Conclusion de la version optimizada

La estructura original esta muy bien como base amplia. La version optimizada que propongo conserva esa idea, pero hace tres mejoras importantes:

- simplifica bloques que pueden solaparse;
- agrega espacios utiles que normalmente hacen falta, como riesgos y decisiones;
- deja mas flexible la parte de servicios para no obligar una arquitectura que tal vez aun no existe.

En pocas palabras, esta version queda mas equilibrada entre orden, profundidad y facilidad de mantenimiento.
