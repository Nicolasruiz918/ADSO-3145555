
# Liquibase + Docker + PostgreSQL 
---



# 🐳 1. Crear contenedor PostgreSQL (sin docker-compose)

Ejecutar en CMD:

```bash
docker run -d --name postgres-container -e POSTGRES_USER=miusuario -e POSTGRES_PASSWORD=MiPassword123 -e POSTGRES_DB=mi_base -p 15433:5432 -v postgres_data:/var/lib/postgresql/data postgres:15
````

---

##  Verificar que esté corriendo

```bash
docker ps
```

---

#  2. Descargar Liquibase

```bash
docker pull liquibase/liquibase
```

Verificar instalación:

```bash
docker run liquibase/liquibase --version
```

---

#  3. Crear proyecto

```bash
cd Desktop
mkdir liquibase-project
cd liquibase-project
```

---

#  4. Descargar driver PostgreSQL

```bash
curl -o postgresql-42.7.9.jar https://jdbc.postgresql.org/download/postgresql-42.7.9.jar
```

Verificar:

```bash
dir
```

Debe aparecer:

```
postgresql-42.7.9.jar
```

---

#  5. Crear archivo de configuración

```bash
notepad liquibase.properties
```

Contenido:

```properties
url=jdbc:postgresql://host.docker.internal:15433/mi_base
username=miusuario
password=MiPassword123
driver=org.postgresql.Driver
changeLogFile=changelog.xml
```

---

#  6. Crear changelog inicial

```bash
notepad changelog.xml
```

Contenido:

```xml
<databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
    http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-3.8.xsd">

    <changeSet id="1" author="nicolas">
        <createTable tableName="persona">
            <column name="id" type="INT" autoIncrement="true">
                <constraints primaryKey="true"/>
            </column>
            <column name="nombre" type="VARCHAR(100)"/>
        </createTable>
    </changeSet>

</databaseChangeLog>
```

---

#  7. Ejecutar Liquibase (crear tabla)

```bash
docker run --rm -v %cd%:/liquibase/changelog -w /liquibase/changelog liquibase/liquibase --classpath=postgresql-42.7.9.jar --defaultsFile=liquibase.properties update
```

---

# 8. Verificar en PostgreSQL

Entrar:

```bash
docker exec -it postgres-container psql -U miusuario -d mi_base
```

Ver tablas:

```sql
\dt
```

Ver estructura:

```sql
\d persona
```

Salir:

```sql
\q
```

---

#  9. Agregar nuevo cambio (nueva columna)

Editar:

```bash
notepad changelog.xml
```

Agregar:

```xml
<changeSet id="2" author="nicolas">
    <addColumn tableName="persona">
        <column name="email" type="VARCHAR(100)"/>
    </addColumn>
</changeSet>
```

---

# 10. Ejecutar nuevamente

```bash
docker run --rm -v %cd%:/liquibase/changelog -w /liquibase/changelog liquibase/liquibase --classpath=postgresql-42.7.9.jar --defaultsFile=liquibase.properties update
```

---

#  11. Verificar cambios

```bash
docker exec -it postgres-container psql -U miusuario -d mi_base
```

```sql
\d persona
```

---

# ❗ Problemas comunes

## 🔴 Error con ${PWD}

Usar en CMD:

```
%cd%
```

---

## 🔴 Error de conexión

Verificar puerto:

```
15433
```

---

## 🔴 Driver no encontrado

Verificar que exista:

```
postgresql-42.7.9.jar
```

---

