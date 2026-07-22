# Generic Web Production Audit Playbook

## Objetivo

Auditar cualquier web, landing o app antes de producción o como corrección post-producción.

## Checklist principal

- hero y propuesta de valor
- CTA principal
- navegación
- formularios
- mobile/tablet/desktop
- performance
- SEO técnico
- Open Graph/canonicals
- cookies/consentimiento si aplica
- accesibilidad
- errores 404/500
- analytics/marketing tags si aplica
- rollback

## Prompt base

```text
Ejecuta un Production Web Audit usando production-agents.

Proyecto:
URL:
Stack:
Objetivo de negocio:
Rutas críticas:
Zonas prohibidas:

Audita, corrige P0/P1/P2, valida, documenta release, commit/push y rollback.
```
