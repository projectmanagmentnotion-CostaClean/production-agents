# Roadmap — Production Agents Library

## Visión

Convertir este repositorio en una biblioteca profesional, versionada y reutilizable de GitHub Custom Agents, playbooks y plantillas para proyectos web, aplicaciones, Supabase, GSAP y automatizaciones empresariales.

## Estado global

`IN_PROGRESS — Foundation v0.1`

## Fase 0 — Gobierno y seguridad

**Estado:** En progreso

- [x] Definir propósito y límites del repositorio.
- [x] Crear `AGENTS.md`.
- [x] Definir niveles de riesgo R0–R4.
- [x] Establecer separación entre implementación y auditoría.
- [x] Crear `docs/SECURITY_MODEL.md`.
- [x] Crear `docs/PERMISSION_MATRIX.md`.
- [ ] Definir política de versionado y releases.

**Cierre:** ningún agente nuevo se acepta sin responsabilidad, herramientas, prohibiciones, validaciones y salida definidas.

## Fase 1 — Estándar de autoría

**Estado:** En progreso

- [x] Crear plantilla oficial `.agent.md`.
- [ ] Crear guía de autoría.
- [ ] Crear catálogo de agentes.
- [ ] Crear escenarios mínimos de evaluación.
- [ ] Añadir validación automática de frontmatter y Markdown.

**Cierre:** todos los perfiles comparten estructura y pueden validarse de forma repetible.

## Fase 2 — Núcleo universal

**Estado:** Implementación completa; evaluación pendiente

- [x] `project-continuation.agent.md`.
- [x] `implementation-planner.agent.md`.
- [x] `senior-fullstack-builder.agent.md`.
- [x] `bug-root-cause-investigator.agent.md`.
- [ ] Crear escenarios de evaluación independientes para los cuatro perfiles.
- [ ] Validar que aparecen y pueden seleccionarse desde GitHub Copilot Agents tras el merge.
- [ ] Ejecutar piloto en un repositorio sin acceso a producción.

**Cierre:** los cuatro agentes tienen responsabilidades no solapadas y escenarios de prueba aprobados.

## Fase 3 — Calidad independiente

**Estado:** Pendiente

- [ ] `qa-e2e-specialist.agent.md`.
- [ ] `pr-quality-gate.agent.md`.
- [ ] `security-privacy-auditor.agent.md`.
- [ ] `documentation-roadmap.agent.md`.
- [ ] Normalizar veredictos P0–P3.

## Fase 4 — Apps y Supabase

**Estado:** Pendiente

- [ ] `supabase-guardian.agent.md`.
- [ ] `business-rules-test-engineer.agent.md`.
- [ ] `frontend-ux-accessibility.agent.md`.
- [ ] Piloto controlado en `costa-clean-app`.

## Fase 5 — Webs visuales y producción

**Estado:** Pendiente

- [ ] `performance-gsap-motion.agent.md`.
- [ ] `seo-local-structured-data.agent.md`.
- [ ] `release-deployment-guardian.agent.md`.
- [ ] Piloto controlado en una web GSAP.

## Fase 6 — Arquitectura de agentes empresariales

**Estado:** Pendiente

- [ ] `enterprise-agent-architect.agent.md`.
- [ ] Plantilla de trigger, herramientas, permisos y aprobaciones.
- [ ] Diseñar primer flujo Costa Clean: lead → presupuesto borrador → aprobación → email.
- [ ] Mantener el agente empresarial fuera de GitHub Agents y versionar aquí únicamente su código, reglas y pruebas.

## Fase 7 — Packs reutilizables

**Estado:** Pendiente

- [ ] Universal Pack.
- [ ] App + Supabase Pack.
- [ ] GSAP Web Pack.
- [ ] Enterprise Agent Pack.
- [ ] Guía de instalación por proyecto.

## Fase 8 — Distribución y versión estable

**Estado:** Pendiente

- [ ] Evaluar repositorio de organización `.github` o `.github-private`.
- [ ] Preparar changelog y etiquetado semántico.
- [ ] Validar agentes en proyectos reales.
- [ ] Publicar `v1.0.0`.

## Próximo bloque recomendado

1. Crear guía de autoría y catálogo de agentes.
2. Añadir validador automático de frontmatter y Markdown.
3. Crear escenarios de evaluación para el núcleo universal.
4. Revisar y fusionar el PR de fundación.
5. Probar los cuatro agentes en un repositorio piloto sin acceso a producción.
6. Iniciar la Fase 3 con auditores independientes.

## Definición de terminado

Una fase solo puede marcarse como cerrada cuando:

- los archivos existen en la rama predeterminada;
- la sintaxis y enlaces fueron validados;
- los escenarios de evaluación están documentados;
- no quedan hallazgos P0 o P1;
- cualquier deuda P2/P3 está registrada;
- el pull request fue revisado y fusionado.
