# Roadmap — Production Agents Library

## Visión

Mantener una biblioteca profesional, versionada y reutilizable de GitHub Custom Agents, playbooks y plantillas para proyectos web, aplicaciones, Supabase, GSAP y automatizaciones empresariales.

## Estado global

`IMPLEMENTATION_COMPLETE — v1.0.0-rc.1`

La biblioteca y sus instalaciones piloto están fusionadas. No quedan hallazgos P0, P1 ni P2. La promoción a `v1.0.0` estable queda condicionada únicamente a la ejecución manual de escenarios desde la interfaz de GitHub Copilot Agents y a la creación del tag/release, capacidades no expuestas por el conector utilizado en este proyecto.

## Fase 0 — Gobierno y seguridad

**Estado:** Completa

- [x] Propósito, límites y `AGENTS.md`.
- [x] Niveles R0–R4 y separación de responsabilidades.
- [x] Modelo de seguridad y matriz de permisos.
- [x] Política de versionado y releases.

## Fase 1 — Estándar de autoría

**Estado:** Completa

- [x] Plantilla oficial `.agent.md`.
- [x] Guía de autoría y catálogo.
- [x] Escenarios de evaluación.
- [x] Validador de frontmatter y contratos.
- [x] GitHub Actions.

## Fase 2 — Núcleo universal

**Estado:** Implementación completa; ejecución UI pendiente

- [x] `project-continuation`.
- [x] `implementation-planner`.
- [x] `senior-fullstack-builder`.
- [x] `bug-root-cause-investigator`.
- [x] Escenarios contractuales.
- [x] Perfiles fusionados en la rama predeterminada.
- [ ] Ejecutar escenarios desde GitHub Copilot Agents y registrar resultados.

## Fase 3 — Calidad independiente

**Estado:** Completa

- [x] `qa-e2e-specialist`.
- [x] `pr-quality-gate`.
- [x] `security-privacy-auditor`.
- [x] `documentation-roadmap`.
- [x] Veredictos y prioridades P0–P3.

## Fase 4 — Apps y Supabase

**Estado:** Instalación piloto completa; ejecución UI pendiente

- [x] `supabase-guardian`.
- [x] `business-rules-test-engineer`.
- [x] `frontend-ux-accessibility`.
- [x] App + Supabase Pack.
- [x] Piloto instalado y fusionado en `costa-clean-app` mediante PR #1.
- [ ] Ejecutar escenarios del documento `docs/PRODUCTION_AGENTS_PILOT.md` de Costa Clean App.

## Fase 5 — Webs visuales y producción

**Estado:** Instalación piloto completa; ejecución UI pendiente

- [x] `performance-gsap-motion`.
- [x] `seo-local-structured-data`.
- [x] `release-deployment-guardian`.
- [x] GSAP Web Pack.
- [x] Piloto instalado y fusionado en `suberos` mediante PR #1.
- [ ] Ejecutar escenarios del documento `docs/PRODUCTION_AGENTS_PILOT.md` de SUBEROS.

## Fase 6 — Arquitectura de agentes empresariales

**Estado:** Completa

- [x] `enterprise-agent-architect`.
- [x] Plantilla de triggers, tools, permisos y aprobaciones.
- [x] Flujo Costa Clean lead → cálculo → presupuesto borrador → aprobación → email.
- [x] Separación entre GitHub Agents y runtime empresarial.

## Fase 7 — Packs reutilizables

**Estado:** Completa

- [x] Universal Pack.
- [x] App + Supabase Pack.
- [x] GSAP Web Pack.
- [x] Enterprise Agent Pack.
- [x] Guía de instalación y onboarding.

## Fase 8 — Distribución y release

**Estado:** Release candidate cerrada

- [x] Estrategia de distribución actual y futura.
- [x] Changelog y SemVer.
- [x] CI del PR de fundación en verde.
- [x] Auditoría independiente sin P0/P1/P2.
- [x] PR de fundación fusionado: `b908f6cd33751e5d5d899cc3a74e4084bb245fbc`.
- [x] Piloto Costa Clean fusionado: `ddc4581d6aea99a1ebf22ea6349077a08f9dee3f`.
- [x] Piloto SUBEROS fusionado: `517efd6b0f36fbfa4f8f1a45e02a53728647d118`.
- [ ] Ejecutar perfiles desde la interfaz de Copilot Agents.
- [ ] Crear tag y release `v1.0.0` tras aprobar los escenarios.

## Deuda documentada

### P3 — Validación de interfaz

El conector de GitHub disponible permite gestionar repositorios, ramas, PR, archivos y CI, pero no lista ni ejecuta sesiones de GitHub Copilot Agents. La presencia de los perfiles en `.github/agents/` de las ramas predeterminadas está verificada; su aparición visual y comportamiento interactivo requieren una sesión desde la interfaz de GitHub.

### P3 — Tag y release

El conector utilizado no expone creación de tags o releases. No se sustituye el tag por una rama ni se declara publicada una release inexistente.

## Definición de terminado estable

`v1.0.0` podrá publicarse cuando:

- al menos un escenario controlado pase en Costa Clean App;
- al menos un escenario controlado pase en SUBEROS;
- no aparezcan P0/P1/P2;
- los resultados queden documentados;
- se cree el tag y release `v1.0.0`.
