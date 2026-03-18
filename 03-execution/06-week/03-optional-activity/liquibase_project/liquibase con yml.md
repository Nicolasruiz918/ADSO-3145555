

#  1. Crear archivo docker-compose.yml

Ubícate en tu proyecto:

```bash
cd Desktop
mkdir liquibase-project
cd liquibase-project
````

Crear el archivo:

```bash
notepad docker-compose.yml
```

Contenido:

```yaml
version: '3.9'

services:
  postgres:
    image: postgres:15
    container_name: postgres-container
    restart: always
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: Nicolas123.
      POSTGRES_DB: mi_base
    ports:
      - "15433:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

---

# 2. Levantar el contenedor

```bash
docker compose up -d
```

---

# 3. Verificar

```bash
docker ps
```

Debe aparecer:

```
postgres-container
```

---

#  4. Descargar Liquibase

```bash
docker pull liquibase/liquibase
```

---

# 5. Descargar driver PostgreSQL

```bash
curl -o postgresql-42.7.9.jar https://jdbc.postgresql.org/download/postgresql-42.7.9.jar
```

---

#  6. Crear archivo de configuración

```bash
notepad liquibase.properties
```

Contenido:

```properties
url=jdbc:postgresql://host.docker.internal:15433/mi_base
username=user
password=Nicolas123.
driver=org.postgresql.Driver
changeLogFile=changelog.xml
```

---

#  7. Crear changelog
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

# 8. Ejecutar Liquibase

```bash
docker run --rm -v %cd%:/liquibase/changelog -w /liquibase/changelog liquibase/liquibase --classpath=postgresql-42.7.9.jar --defaultsFile=liquibase.properties update
```

---

# 9. Verificar en PostgreSQL

```bash
docker exec -it postgres-container psql -U user-d mi_base
```

```sql
\dt
```

```sql
\d persona
```

Salir:

```sql
\q
```

---

#  10. Agregar nuevo cambio

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

# 11. Ejecutar nuevamente

```bash
docker run --rm -v %cd%:/liquibase/changelog -w /liquibase/changelog liquibase/liquibase --classpath=postgresql-42.7.9.jar --defaultsFile=liquibase.properties update
```

---
# 12. Verificar cambios

```bash
docker exec -it postgres-container psql -U user -d mi_base
```

```sql
\d persona
```

---

# agregar datos con Liquibase


Abrir:

```bash
notepad changelog.xml
```

Y agrega esto **debajo de los otros changeSet** 

```xml
<changeSet id="3" author="nicolas">
    <insert tableName="persona">
        <column name="nombre" value="Carlos"/>
        <column name="email" value="carlos@gmail.com"/>
    </insert>

    <insert tableName="persona">
        <column name="nombre" value="Ana"/>
        <column name="email" value="ana@gmail.com"/>
    </insert>

    <insert tableName="persona">
        <column name="nombre" value="Luis"/>
        <column name="email" value="luis@gmail.com"/>
    </insert>
</changeSet>
```

---

#   Ejecutar Liquibase otra vez

```bash
docker run --rm -v %cd%:/liquibase/changelog -w /liquibase/changelog liquibase/liquibase --classpath=postgresql-42.7.9.jar --defaultsFile=liquibase.properties update
```

---

#   Verificar los datos
Entrar a PostgreSQL:

```bash
docker exec -it postgres-container psql -U user -d mi_base
```

Consultar:

```sql
SELECT * FROM persona;
```

# Problemas comunes

##  No conecta

Cambiar:

```properties
host.docker.internal → localhost
```

---

##  Error de driver

Verificar:

```
postgresql-42.7.9.jar
```

---