# Roadmap — Production Agents Library

## Visión

Mantener una biblioteca profesional, versionada y reutilizable de GitHub Custom Agents, playbooks y plantillas para proyectos web, aplicaciones, Supabase, GSAP y automatizaciones empresariales.

## Estado global

`RELEASE_CANDIDATE — v1.0.0-rc.1`

La implementación del repositorio está completa. La promoción a `v1.0.0` estable depende de CI verde, revisión independiente, merge y pilotos post-merge en proyectos reales.

## Fase 0 — Gobierno y seguridad

**Estado:** Completa

- [x] Definir propósito y límites.
- [x] Crear `AGENTS.md`.
- [x] Definir niveles R0–R4.
- [x] Separar implementación y auditoría.
- [x] Crear `docs/SECURITY_MODEL.md`.
- [x] Crear `docs/PERMISSION_MATRIX.md`.
- [x] Crear política de versionado y releases.

## Fase 1 — Estándar de autoría

**Estado:** Completa

- [x] Plantilla oficial `.agent.md`.
- [x] Guía de autoría.
- [x] Catálogo de agentes.
- [x] Escenarios mínimos de evaluación.
- [x] Validador automático de frontmatter y contratos.
- [x] Workflow de GitHub Actions.

## Fase 2 — Núcleo universal

**Estado:** Implementación completa; piloto post-merge pendiente

- [x] `project-continuation.agent.md`.
- [x] `implementation-planner.agent.md`.
- [x] `senior-fullstack-builder.agent.md`.
- [x] `bug-root-cause-investigator.agent.md`.
- [x] Escenarios contractuales documentados.
- [ ] Confirmar aparición y selección desde GitHub Copilot Agents después del merge.
- [ ] Ejecutar piloto en repositorio real sin producción.

## Fase 3 — Calidad independiente

**Estado:** Completa

- [x] `qa-e2e-specialist.agent.md`.
- [x] `pr-quality-gate.agent.md`.
- [x] `security-privacy-auditor.agent.md`.
- [x] `documentation-roadmap.agent.md`.
- [x] Veredictos normalizados y prioridades P0–P3.

## Fase 4 — Apps y Supabase

**Estado:** Implementación completa; piloto pendiente

- [x] `supabase-guardian.agent.md`.
- [x] `business-rules-test-engineer.agent.md`.
- [x] `frontend-ux-accessibility.agent.md`.
- [x] App + Supabase Pack.
- [ ] Piloto controlado en `costa-clean-app`.

## Fase 5 — Webs visuales y producción

**Estado:** Implementación completa; piloto pendiente

- [x] `performance-gsap-motion.agent.md`.
- [x] `seo-local-structured-data.agent.md`.
- [x] `release-deployment-guardian.agent.md`.
- [x] GSAP Web Pack.
- [ ] Piloto controlado en una web GSAP.

## Fase 6 — Arquitectura de agentes empresariales

**Estado:** Completa

- [x] `enterprise-agent-architect.agent.md`.
- [x] Plantilla de trigger, tools, permisos y aprobaciones.
- [x] Flujo Costa Clean: lead → cálculo → presupuesto borrador → aprobación → email.
- [x] Separación explícita entre GitHub Agents y runtime empresarial.

## Fase 7 — Packs reutilizables

**Estado:** Completa

- [x] Universal Pack.
- [x] App + Supabase Pack.
- [x] GSAP Web Pack.
- [x] Enterprise Agent Pack.
- [x] Guía de instalación.
- [x] Plantilla de onboarding.

## Fase 8 — Distribución y versión estable

**Estado:** En cierre

- [x] Evaluar distribución actual y futura mediante `.github`/`.github-private`.
- [x] Preparar changelog y SemVer.
- [x] Preparar release candidate `v1.0.0-rc.1`.
- [ ] CI del PR en verde.
- [ ] Auditoría independiente sin P0/P1/P2.
- [ ] Fusionar PR de fundación.
- [ ] Ejecutar pilotos reales.
- [ ] Publicar `v1.0.0` estable.

## Gates restantes

1. Ejecutar GitHub Actions del PR.
2. Revisar el diff completo con `pr-quality-gate` y `security-privacy-auditor` en modo lectura.
3. Corregir cualquier P0/P1/P2 real.
4. Fusionar el PR.
5. Confirmar que los perfiles aparecen en GitHub Copilot Agents.
6. Instalar App + Supabase Pack en `costa-clean-app` mediante PR.
7. Instalar GSAP Web Pack en una web piloto mediante PR.
8. Ejecutar escenarios pequeños y registrar resultados.
9. Promover el changelog y crear tag `v1.0.0`.

## Definición de terminado

La versión estable se considera cerrada cuando:

- los archivos existen en `main`;
- CI está verde;
- no quedan hallazgos P0, P1 o P2;
- los perfiles aparecen y se pueden seleccionar;
- los dos pilotos controlados están documentados;
- cualquier deuda P3 está registrada;
- se publica el tag `v1.0.0`.
