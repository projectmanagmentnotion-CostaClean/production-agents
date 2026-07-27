# Universal Pack

Paquete base recomendado para cualquier repositorio.

## Agentes

- `project-continuation`
- `implementation-planner`
- `senior-fullstack-builder`
- `bug-root-cause-investigator`
- `qa-e2e-specialist`
- `pr-quality-gate`
- `security-privacy-auditor`
- `documentation-roadmap`

## Instalación

Copia los perfiles correspondientes desde `.github/agents/` a la misma ruta del proyecto destino. Añade un `AGENTS.md` específico del proyecto y adapta únicamente reglas de stack, comandos y zonas prohibidas.

## Gate recomendado

Planner → Builder/Bug Investigator → QA → Security → PR Quality Gate → revisión humana.
