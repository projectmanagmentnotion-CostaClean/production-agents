# Production Agents Library

Biblioteca central de agentes reutilizables para planificación, desarrollo, auditoría, seguridad, UX/UI, releases y cierre de producción.

El repositorio combina dos capas:

1. **GitHub Custom Agents ejecutables** en `.github/agents/`.
2. **Playbooks, agentes históricos y plantillas portables** en `agents/`, `playbooks/` y `templates/`.

Sirve como fuente común para proyectos como:

- Costa Clean App y CRM;
- Ridaos Print;
- webs corporativas y landings;
- ecommerce y configuradores;
- apps internas;
- proyectos con React, Vite, Next.js, WordPress, GSAP o Supabase;
- futuras automatizaciones y agentes empresariales.

## Uso sin Codex

Codex no es obligatorio. El flujo principal puede realizarse con:

```text
ChatGPT
Diseño, creación y revisión de agentes

GitHub
Repositorio, ramas, commits y pull requests

GitHub Copilot Custom Agents
Ejecución de perfiles especializados

GitHub Actions
Validaciones automáticas
```

Codex queda como herramienta opcional para trabajo local o ingeniería intensiva.

## Uso de GitHub Custom Agents

1. Fusiona los perfiles de `.github/agents/` en la rama predeterminada.
2. Abre la sección GitHub Copilot Agents.
3. Selecciona este repositorio y el agente deseado.
4. Describe una tarea concreta y sus límites.
5. Revisa la rama, el pull request y las validaciones antes de fusionar.

Los agentes con capacidad de edición o ejecución están configurados inicialmente para selección manual mediante `disable-model-invocation: true`.

## Custom Agents disponibles

- `.github/agents/project-continuation.agent.md`
- `.github/agents/implementation-planner.agent.md`

Consulta `docs/ROADMAP.md` para el resto del núcleo y especialistas previstos.

## Agentes históricos y portables

- `agents/universal-product-corrector.md`
- `agents/ux-ui-auditor.md`
- `agents/production-release-gate.md`
- `agents/supabase-security-gate.md`
- `agents/migration-history-gate.md`
- `agents/final-closeout-agent.md`

Estos archivos se conservarán y se convertirán progresivamente a perfiles `.agent.md` después de revisar herramientas, permisos y compatibilidad.

## Plantillas

- `templates/custom-agent-template.agent.md`
- `templates/bug-report.md`
- `templates/ux-ui-audit.md`
- `templates/release-plan.md`
- `templates/production-smoke.md`
- `templates/rollback-plan.md`

## Playbooks

- `playbooks/costa-clean-closeout.md`
- `playbooks/ridaos-web-audit.md`
- `playbooks/generic-web-production-audit.md`

## Gobierno

Antes de crear o modificar agentes, lee:

- `AGENTS.md`
- `docs/ROADMAP.md`

Reglas permanentes:

- No tocar producción sin gate explícito.
- No tocar bases de datos productivas sin backup y autorización.
- No ejecutar `db push` si existe drift o bloqueo.
- No tocar facturas, cobros, cierres, numeración fiscal o pagos sin gate fiscal explícito.
- No usar `service_role` en frontend.
- No imprimir ni versionar secretos.
- No commitear `.env`, cookies, dumps, `storageState`, tokens o carpetas privadas.
- No declarar pruebas o auditorías como ejecutadas sin evidencia.
- Todo cambio debe realizarse en rama y quedar revisable mediante pull request.

## Estado

La biblioteca está en fase de fundación `v0.1`. El objetivo es publicar una versión `v1.0.0` después de validar el núcleo universal en proyectos piloto reales.
