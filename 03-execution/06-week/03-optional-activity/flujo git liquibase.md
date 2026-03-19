# Flujo Git — Liquibase

Estrategia de trabajo por ambientes `main`, `develop` y `qa` usando ramas hijas por HU.

---

## Regla principal

Las ramas padre (`main`, `develop`, `qa`) **nunca se tocan directamente**.  
Todo cambio entra por una rama hija HU y se sube manualmente.

---

## Estructura de ramas

Las 3 ramas padre son **independientes entre sí**, cada una tiene su propia rama hija por HU:

```
main    ── HU-01-main
develop ── HU-01-develop
qa      ── HU-01-qa
```

El flujo de los cambios viaja así:

```
HU-01-develop ──→ HU-01-qa ──→ HU-01-main
```

Cada rama hija sube sus cambios **únicamente a su rama padre correspondiente**.

---

## Paso a paso completo

### PASO 1 — Clonar el repositorio

```bash
git clone https://github.com/Nicolasruiz918/liquibase.git
cd liquibase
```

---

### PASO 2 — Primer commit en main

1. Crea `README.md` en VSCode, escribe `# Liquibase` y guárdalo

```bash
git add .
git commit -m "Initial commit"
git push -u origin main
```

---

### PASO 3 — Crear develop y agregar archivo

```bash
git switch -c develop
```

1. Crea `develop.txt` en VSCode, escribe `rama develop` y guárdalo

```bash
git add .
git commit -m "inicio develop"
git push -u origin develop
```

---

### PASO 4 — Crear qa y agregar archivo

```bash
git switch main
git switch -c qa
```

1. Crea `qa.txt` en VSCode, escribe `rama qa` y guárdalo

```bash
git add .
git commit -m "inicio qa"
git push -u origin qa
```

---

### PASO 5 — Crear HU-01-develop desde develop

```bash
git switch develop
git switch -c HU-01-develop
```

1. Crea `cambio1.txt` en VSCode, escribe `mi primer cambio` y guárdalo

```bash
git add .
git commit -m "HU-01: agrego cambio1.txt"
git push -u origin HU-01-develop
```

---

### PASO 6 — Pasar cambios manualmente a develop

```bash
git switch develop
```

1. Copia `cambio1.txt` manualmente en VSCode y guárdalo

```bash
git add .
git commit -m "HU-01: cambio1.txt llega a develop"
git push origin develop
```

---

### PASO 7 — Crear HU-01-qa desde qa

```bash
git switch qa
git switch -c HU-01-qa
```

1. Copia `cambio1.txt` manualmente en VSCode y guárdalo

```bash
git add .
git commit -m "HU-01: agrego cambio1.txt en HU-01-qa"
git push -u origin HU-01-qa
```

---

### PASO 8 — Pasar cambios manualmente a qa

```bash
git switch qa
```

1. Copia `cambio1.txt` manualmente en VSCode y guárdalo

```bash
git add .
git commit -m "HU-01: cambio1.txt llega a qa"
git push origin qa
```

---

### PASO 9 — Crear HU-01-main desde main

```bash
git switch main
git switch -c HU-01-main
```

1. Copia `cambio1.txt` manualmente en VSCode y guárdalo

```bash
git add .
git commit -m "HU-01: agrego cambio1.txt en HU-01-main"
git push -u origin HU-01-main
```

---

### PASO 10 — Pasar cambios manualmente a main

```bash
git switch main
```

1. Copia `cambio1.txt` manualmente en VSCode y guárdalo

```bash
git add .
git commit -m "HU-01: cambio1.txt llega a main"
git push origin main
```

---

## Resultado final en Git Graph

```
main      ●──────────────────●
           \                /
            HU-01-main     ●

qa        ●──────────────●
           \            /
            HU-01-qa   ●

develop   ●──────────●
           \        /
            HU-01-develop ●
```

---

## Comandos clave

| Acción | Comando |
|---|---|
| Crear rama | `git switch -c nombre-rama` |
| Cambiar de rama | `git switch nombre-rama` |
| Ver todas las ramas | `git branch -a` |
| Subir rama nueva | `git push -u origin nombre-rama` |
| Guardar cambios | `git add .` + `git commit -m "mensaje"` |
| Subir cambios | `git push origin nombre-rama` |


# REPOSITORIO 
https://github.com/Nicolasruiz918/liquibase.git