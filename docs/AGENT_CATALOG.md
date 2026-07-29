# Catálogo de agentes

## Núcleo universal

| Agente | Riesgo | Uso principal |
|---|---:|---|
| `project-continuation` | R2 | Reconstruir estado y continuar el siguiente bloque del roadmap. |
| `implementation-planner` | R1 | Crear planes técnicos sin implementar. |
| `senior-fullstack-builder` | R2 | Implementar funcionalidades aprobadas. |
| `bug-root-cause-investigator` | R2 | Reproducir errores, corregir causa raíz y añadir regresión. |

## Calidad independiente

| Agente | Riesgo | Uso principal |
|---|---:|---|
| `qa-e2e-specialist` | R2 | Diseñar y ejecutar pruebas unitarias, integración y E2E. |
| `pr-quality-gate` | R1 | Auditar un PR en modo lectura y emitir veredicto P0–P3. |
| `security-privacy-auditor` | R1 | Auditar seguridad, autorización, secretos y privacidad. |
| `documentation-roadmap` | R1 | Reconciliar documentación y estado real. |

## Apps y Supabase

| Agente | Riesgo | Uso principal |
|---|---:|---|
| `supabase-guardian` | R3 | Preparar cambios seguros de esquema, RLS, Auth y Storage. |
| `business-rules-test-engineer` | R2 | Convertir reglas económicas en código determinista y tests. |
| `frontend-ux-accessibility` | R2 | Mejorar UX, responsive y accesibilidad en una superficie o flujo acotado. |
| `senior-figma-mobile-first-auditor` | R2 | Auditar el frontend completo con criterio Figma senior, diseñar primero móvil, adaptar iPad y elevar limpieza, claridad y consistencia sin tocar lógica. |

## Webs visuales y producción

| Agente | Riesgo | Uso principal |
|---|---:|---|
| `performance-gsap-motion` | R2 | Optimizar GSAP, ScrollTrigger, medios y Core Web Vitals. |
| `seo-local-structured-data` | R2 | SEO técnico, local y JSON-LD basado en datos reales. |
| `release-deployment-guardian` | R3 | Preparar releases, artefactos, smoke y rollback sin desplegar. |

## Agentes empresariales

| Agente | Riesgo | Uso principal |
|---|---:|---|
| `enterprise-agent-architect` | R2 | Diseñar software de agentes empresariales con tools, approvals y auditoría. |

## Selección rápida

```text
Planificar → implementation-planner
Implementar → senior-fullstack-builder
Corregir bug → bug-root-cause-investigator
Continuar roadmap → project-continuation
Probar → qa-e2e-specialist
Auditar PR → pr-quality-gate
Auditar seguridad → security-privacy-auditor
Alinear docs → documentation-roadmap
Supabase → supabase-guardian
Tarifas/facturas → business-rules-test-engineer
Corregir UX/accesibilidad acotada → frontend-ux-accessibility
Auditar frontend completo mobile-first → senior-figma-mobile-first-auditor
GSAP/rendimiento → performance-gsap-motion
SEO local → seo-local-structured-data
Preparar publicación → release-deployment-guardian
Crear agente empresarial → enterprise-agent-architect
```

## Política de composición

No copies todos los perfiles a todos los proyectos. Instala un pack base y añade especialistas según stack y riesgo. Un implementador no debe aprobar su propio cambio; usa un auditor independiente.
