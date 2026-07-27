# Changelog

Todos los cambios relevantes de Production Agents Library se documentan aquí.

## [Unreleased]

### Pendiente

- Ejecución interactiva de escenarios en GitHub Copilot Agents.
- Promoción y publicación de `v1.0.0` estable.

## [1.0.0-rc.1] - 2026-07-27

### Añadido

- Gobierno global mediante `AGENTS.md`.
- Modelo de seguridad y matriz de permisos R0–R4.
- Plantilla oficial de custom agents.
- Guía de autoría, catálogo, instalación, distribución, evaluación y versionado.
- 15 GitHub Custom Agents especializados.
- Núcleo universal: continuation, planner, builder y bug investigator.
- Calidad independiente: QA, PR gate, security auditor y documentation agent.
- Especialistas: Supabase, reglas de negocio, UX/accesibilidad, GSAP, SEO y releases.
- Arquitecto de agentes empresariales.
- Cuatro packs reutilizables.
- Escenarios contractuales y pruebas contra prompt injection.
- Validación automática de perfiles y documentación.
- Plantilla de onboarding y diseño de agentes empresariales.
- Playbook Costa Clean lead → presupuesto → aprobación → email.

### Pilotos instalados

- Costa Clean App: cinco perfiles fusionados mediante PR #1.
- SUBEROS: seis perfiles fusionados mediante PR #1.

### Seguridad

- Selección manual inicial para perfiles con capacidad de edición o ejecución.
- Herramientas explícitas y mínimo privilegio.
- Prohibición por defecto de producción, secretos, migraciones remotas, pagos y acciones destructivas.
- Implementación separada de auditoría y aprobación.

### Validación

- Workflow `Validate Custom Agents`: success.
- Auditoría independiente: `APPROVED_WITH_DOCUMENTED_DEBT`.
- P0: ninguno.
- P1: ninguno.
- P2: ninguno.
- P3: ejecución desde UI y tag/release pendientes por limitación del conector.

> Nota: esta versión está incorporada en `main`, pero el tag/release de GitHub no se declara creado mientras la herramienta disponible no permita verificarlo.

## [0.1.0] - 2026-07-22

### Añadido

- Agentes históricos y playbooks para auditoría, Supabase, releases y cierre de producción.
