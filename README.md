# Production Agents Library

Biblioteca profesional y reutilizable de GitHub Custom Agents para planificar, construir, probar, auditar y preparar releases de webs, aplicaciones, Supabase, GSAP y agentes empresariales.

## No necesitas Codex

El flujo principal funciona con:

```text
ChatGPT
→ diseña, crea y revisa los perfiles

GitHub
→ almacena, versiona, valida y distribuye

GitHub Copilot Custom Agents
→ ejecuta los especialistas sobre repositorios

GitHub Actions
→ valida contratos y estructura
```

Codex queda como herramienta opcional, no como dependencia del proyecto.

## Estructura

```text
.github/agents/       15 agentes ejecutables
.github/workflows/    validación automática
agents/               agentes históricos portables
packs/                selecciones por tipo de proyecto
playbooks/            procesos y casos reales
templates/            plantillas de creación y onboarding
docs/                 gobierno, seguridad y operación
tests/                escenarios contractuales
scripts/              validadores locales
```

## Agentes disponibles

### Núcleo universal

- `project-continuation`
- `implementation-planner`
- `senior-fullstack-builder`
- `bug-root-cause-investigator`

### Calidad independiente

- `qa-e2e-specialist`
- `pr-quality-gate`
- `security-privacy-auditor`
- `documentation-roadmap`

### Apps y Supabase

- `supabase-guardian`
- `business-rules-test-engineer`
- `frontend-ux-accessibility`

### Webs visuales y producción

- `performance-gsap-motion`
- `seo-local-structured-data`
- `release-deployment-guardian`

### Agentes empresariales

- `enterprise-agent-architect`

Consulta la descripción, riesgo y uso de cada uno en `docs/AGENT_CATALOG.md`.

## Packs

- `packs/universal`
- `packs/app-supabase`
- `packs/web-gsap`
- `packs/enterprise-agents`

La guía completa está en `docs/INSTALLATION.md`.

## Uso

1. Elige un pack.
2. Copia solo los perfiles necesarios a `.github/agents/` del proyecto.
3. Crea un `AGENTS.md` específico usando `templates/project-onboarding.md`.
4. Fusiona los perfiles en la rama predeterminada.
5. Abre GitHub Copilot Agents y selecciona manualmente el agente.
6. Ejecuta una tarea pequeña en rama aislada.
7. Revisa diff, CI y evidencia con un agente independiente.

Todos los perfiles se mantienen inicialmente con `disable-model-invocation: true`.

## Selección rápida

```text
Planificar                 → implementation-planner
Implementar                → senior-fullstack-builder
Corregir un error          → bug-root-cause-investigator
Continuar un roadmap       → project-continuation
Probar                     → qa-e2e-specialist
Auditar un PR              → pr-quality-gate
Auditar seguridad          → security-privacy-auditor
Alinear documentación      → documentation-roadmap
Supabase                   → supabase-guardian
Tarifas y facturación      → business-rules-test-engineer
UX y accesibilidad         → frontend-ux-accessibility
GSAP y rendimiento         → performance-gsap-motion
SEO local                  → seo-local-structured-data
Preparar una publicación   → release-deployment-guardian
Diseñar un agente real     → enterprise-agent-architect
```

## Validación

Ejecuta localmente:

```bash
ruby scripts/validate_agents.rb
```

GitHub Actions ejecuta el mismo gate en pull requests y en `main`. El validador comprueba frontmatter, nombres, herramientas, riesgos, versiones, secciones obligatorias y límite del prompt.

## Seguridad

Lee antes de utilizar o ampliar perfiles:

- `AGENTS.md`
- `docs/SECURITY_MODEL.md`
- `docs/PERMISSION_MATRIX.md`
- `docs/AGENT_AUTHORING_GUIDE.md`
- `docs/TESTING_STRATEGY.md`

Reglas permanentes:

- herramientas explícitas y mínimo privilegio;
- ningún agente escribe directamente en `main`;
- producción, secretos, pagos y acciones irreversibles quedan prohibidos por defecto;
- Supabase remoto requiere un gate separado;
- la IA no calcula dinero libremente;
- el implementador no aprueba su propio trabajo;
- `NOT_EXECUTED` nunca equivale a `PASS`.

## Agentes empresariales reales

GitHub Agents ayuda a diseñar y mantener el software, pero el agente que envía emails, calcula presupuestos o gestiona reservas debe ejecutarse en un backend o worker con tools limitadas, permisos, aprobaciones y auditoría.

Primer caso diseñado: `playbooks/costa-clean-lead-agent.md`.

## Documentación

- `docs/ROADMAP.md`
- `docs/AGENT_CATALOG.md`
- `docs/AGENT_AUTHORING_GUIDE.md`
- `docs/INSTALLATION.md`
- `docs/SECURITY_MODEL.md`
- `docs/PERMISSION_MATRIX.md`
- `docs/TESTING_STRATEGY.md`
- `docs/VERSIONING.md`
- `CHANGELOG.md`

## Estado

Implementación de la biblioteca `v1.0.0-rc.1` completa. La promoción a estable requiere CI verde, revisión independiente, merge y comprobación post-merge de aparición/ejecución en GitHub Copilot Agents.