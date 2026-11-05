# Code and tags / Código y tags: Guardián Escolar

## Original repositories / Repositorios originales

Every original working repository of the project must be listed here and must be **public**. The instructor compares what was delivered against these repositories, so they must stay public and keep their full history until the review ends.

Todos los repositorios originales de trabajo del proyecto deben estar aquí y deben ser **públicos**. El instructor contrasta lo entregado contra estos repositorios, así que deben seguir públicos y con todo su historial hasta terminar la revisión.

If one is missing, add a row. If one is empty or no longer used, write that in the commit column. The visibility shown was checked on 2026-11-04.

Si falta alguno, agregue la fila. Si uno está vacío o ya no se usa, indíquelo en la columna del commit. La visibilidad indicada se revisó el 2026-11-04.

| Component / Componente | Repository / Repositorio | Status / Estado | Access for `ariel5253` / Acceso de `ariel5253` | Commit of tag `final-delivery-2026` / Commit del tag | Main version ZIP / ZIP versión main | Full export ZIP / ZIP completo |
|---|---|---|---|---|---|---|
| Backend | [GPS-Guardian-Escolar/Backend-Guardian-Escolar](https://github.com/GPS-Guardian-Escolar/Backend-Guardian-Escolar) | Public / Público | Pending / Pendiente | [`1022058d545a9e7936edbff75950034ec4f98e88`](https://github.com/GPS-Guardian-Escolar/Backend-Guardian-Escolar/commit/1022058d545a9e7936edbff75950034ec4f98e88) | [Backend-Guardian-Escolar-final-delivery-2026-main.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/Backend-Guardian-Escolar-final-delivery-2026-main.zip) | [Backend-Guardian-Escolar-full-export.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/Backend-Guardian-Escolar-full-export.zip) |
| Database | [GPS-Guardian-Escolar/DB-Structure-Guardian-Escolar](https://github.com/GPS-Guardian-Escolar/DB-Structure-Guardian-Escolar) | Public / Público | Pending / Pendiente | [`9278b1dcb224301536d6158357f74daee74b20ba`](https://github.com/GPS-Guardian-Escolar/DB-Structure-Guardian-Escolar/commit/9278b1dcb224301536d6158357f74daee74b20ba) | [DB-Structure-Guardian-Escolar-final-delivery-2026-main.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/DB-Structure-Guardian-Escolar-final-delivery-2026-main.zip) | [DB-Structure-Guardian-Escolar-full-export.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/DB-Structure-Guardian-Escolar-full-export.zip) |
| Infrastructure | [GPS-Guardian-Escolar/Docker-Infra-Guardian-Escolar](https://github.com/GPS-Guardian-Escolar/Docker-Infra-Guardian-Escolar) | Public / Público | Pending / Pendiente | [`131e98954430e95e9108174eded9896b3f0d5272`](https://github.com/GPS-Guardian-Escolar/Docker-Infra-Guardian-Escolar/commit/131e98954430e95e9108174eded9896b3f0d5272) | [Docker-Infra-Guardian-Escolar-final-delivery-2026-main.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/Docker-Infra-Guardian-Escolar-final-delivery-2026-main.zip) | [Docker-Infra-Guardian-Escolar-full-export.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/Docker-Infra-Guardian-Escolar-full-export.zip) |
| Documentation | [GPS-Guardian-Escolar/Docs-Guardian-Escolar](https://github.com/GPS-Guardian-Escolar/Docs-Guardian-Escolar) | Public / Público | Pending / Pendiente | Pending `main` finalization and tag | Pending `final-delivery` release | Pending `final-delivery` release |
| Web frontend | [GPS-Guardian-Escolar/Fronted-GuardianEscolar-](https://github.com/GPS-Guardian-Escolar/Fronted-GuardianEscolar-) | Public / Público | Pending / Pendiente | [`3d9f59fa3e91b5ecc5b8ae86591187546b966668`](https://github.com/GPS-Guardian-Escolar/Fronted-GuardianEscolar-/commit/3d9f59fa3e91b5ecc5b8ae86591187546b966668) | [Fronted-GuardianEscolar--final-delivery-2026-main.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/Fronted-GuardianEscolar--final-delivery-2026-main.zip) | [Fronted-GuardianEscolar--full-export.zip](https://github.com/Nicolasruiz918/ADSO-3145555/releases/download/final-delivery/Fronted-GuardianEscolar--full-export.zip) |

Before making a repository public, remove `.env` files and change any password, token or key that was ever committed.

Antes de hacer público un repositorio, quite los archivos `.env` y cambie toda contraseña, token o llave que se haya subido alguna vez.

The instructor account `ariel5253` needs write access to every repository, so pending items can be corrected for the software registration. Add it as a collaborator where the table says so.

La cuenta del instructor, `ariel5253`, necesita acceso de escritura en cada repositorio, para poder corregir pendientes del registro de software. Agréguela como colaboradora donde la tabla lo indique.

## Why two ZIP files / Por qué dos ZIP

| File / Archivo | Content / Contenido | Purpose / Para qué sirve |
|---|---|---|
| `<repo>-final-delivery-2026-main.zip` | Only the code of `main` at tag `final-delivery-2026` / Solo el código de `main` en el tag | The exact version delivered, used for software registration / La versión exacta entregada, la que se usa para registro de software |
| `<repo>-full-export.zip` | The whole repository: all branches, tags and history / Todo el repositorio: ramas, tags e historial | Proof of the work done and a complete backup / Prueba del trabajo realizado y respaldo completo |

## Where the ZIP files live / Dónde quedan los ZIP

The ZIP files do not go in this folder. They are attached to the `final-delivery` GitHub Release in [Nicolasruiz918/ADSO-3145555](https://github.com/Nicolasruiz918/ADSO-3145555/releases/tag/final-delivery), and linked in the table above once the release is published.

Los ZIP no van en esta carpeta. Se adjuntan a un Release de GitHub llamado `final-delivery` en el fork de quien entrega, y se enlazan en la tabla de arriba.

## Integrity / Integridad

Copy the SHA-256 of every ZIP into [`SHA256SUMS.txt`](SHA256SUMS.txt). / Copie el SHA-256 de cada ZIP en ese archivo.

The Android APK is larger than 50 MB, so it is distributed through the project README/Drive evidence link rather than stored in this repository folder. / La APK Android supera los 50 MB, por lo que se distribuye mediante el enlace de evidencia en Drive del README del proyecto y no se almacena en esta carpeta.
