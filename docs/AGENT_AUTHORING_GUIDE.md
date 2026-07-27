# Guía de autoría de GitHub Custom Agents

## Objetivo

Crear perfiles especializados, seguros y comprobables en `.github/agents/*.agent.md`.

## Fuente técnica

Los perfiles usan Markdown con frontmatter YAML. `description` es obligatoria. Las herramientas deben declararse explícitamente; si se omiten, el agente puede recibir todas las disponibles. Para esta biblioteca se exige mínimo privilegio.

## Convenciones

- Archivo: minúsculas y guiones, terminación `.agent.md`.
- `name`: idéntico al nombre de archivo sin extensión.
- `target`: `github-copilot`.
- `disable-model-invocation: true` durante la fase de validación.
- `user-invocable: true` salvo agentes exclusivamente internos.
- `metadata.version`: SemVer entre comillas.
- `metadata.risk-level`: `R0`, `R1`, `R2`, `R3` o `R4`.
- Prompt inferior a 30.000 caracteres.

## Herramientas permitidas

Aliases base:

- `read`: lectura de archivos.
- `search`: búsqueda en repositorio.
- `edit`: modificación de archivos.
- `execute`: comandos locales.
- `agent`: invocación de otro custom agent.
- `github/*`: herramientas GitHub MCP de lectura.
- `playwright/*`: navegador limitado a localhost.

No omitas `tools`. Un auditor normalmente usa `read`, `search` y `github/*`. Un implementador puede añadir `edit` y `execute`. Playwright solo cuando existe una necesidad real.

## Estructura obligatoria

1. Identidad.
2. Objetivo.
3. Flujo obligatorio.
4. Acciones permitidas.
5. Acciones prohibidas.
6. Validaciones.
7. Formato de salida.
8. Criterio de finalización.

## Riesgos

- `R0`: solo lectura documental.
- `R1`: análisis sensible o edición documental.
- `R2`: código local reversible.
- `R3`: datos, releases, integraciones o infraestructura; preparación local por defecto.
- `R4`: producción, pagos, secretos, permisos o acciones irreversibles; no se concede a perfiles generales.

## Reglas de calidad

- Una responsabilidad principal por agente.
- No mezclar implementación y aprobación independiente.
- No inventar validaciones, credenciales, resultados o estado.
- Usar `PASS`, `FAIL`, `NOT_AVAILABLE` y `NOT_EXECUTED`.
- Toda acción remota o de producción debe quedar prohibida por defecto.
- Cada agente debe saber cuándo responder `BLOCKED`.

## Revisión antes de merge

- Frontmatter válido.
- Descripción precisa.
- Herramientas coherentes con riesgo.
- Prohibiciones explícitas.
- Sin secretos ni referencias privadas.
- Formato de salida estable.
- Entrada en `docs/AGENT_CATALOG.md`.
- Escenario de evaluación en `tests/agent-scenarios/`.
- Validación automática verde.
- Revisión independiente.
