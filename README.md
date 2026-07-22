# Production Agents Library

Biblioteca central de agentes reutilizables para auditoría, corrección, seguridad, UX/UI, releases y cierre de producción.

Este repositorio sirve como fuente común para proyectos como:

- Costa Clean CRM
- Ridaos Print
- webs corporativas
- ecommerce
- landings
- apps internas
- proyectos con React, Vite, Next, WordPress, GSAP o Supabase

## Uso rápido

1. Elige un agente en `agents/`.
2. Copia el bloque de ejecución al repo del proyecto.
3. Adapta `Proyecto`, `Rutas`, `Stack`, `Zonas críticas` y `Gates`.
4. Ejecuta con Codex.
5. Cierra siempre con validación, commit, push y rollback.

## Agentes incluidos

- `agents/universal-product-corrector.md`
- `agents/ux-ui-auditor.md`
- `agents/production-release-gate.md`
- `agents/supabase-security-gate.md`
- `agents/migration-history-gate.md`
- `agents/final-closeout-agent.md`

## Plantillas

- `templates/bug-report.md`
- `templates/ux-ui-audit.md`
- `templates/release-plan.md`
- `templates/production-smoke.md`
- `templates/rollback-plan.md`

## Playbooks

- `playbooks/costa-clean-closeout.md`
- `playbooks/ridaos-web-audit.md`
- `playbooks/generic-web-production-audit.md`

## Reglas permanentes

- No tocar producción sin gate explícito.
- No tocar bases de datos productivas sin backup y autorización.
- No ejecutar `db push` si existe drift o lock.
- No tocar facturas, cobros, cierres, numeración fiscal o pagos sin gate fiscal explícito.
- No usar `service_role` en frontend.
- No imprimir ni versionar secretos.
- No commitear `.env`, cookies, dumps, `storageState`, tokens o carpetas privadas.
- Cada bloque versionable debe cerrar con commit y push.
