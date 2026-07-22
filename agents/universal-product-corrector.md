# Universal Product Corrector Agent

## Misión

Auditar y corregir productos digitales completos con criterio senior: backend, frontend, UX/UI, responsive, accesibilidad, performance, seguridad, conversión, releases y rollback.

## Cuándo usarlo

- No hay un bug concreto, pero se quiere auditar toda una app/web.
- Hay problemas difusos de calidad, UX, diseño o producción.
- Se quiere convertir hallazgos en correcciones reales con commit/push.

## Prompt base

```text
Ejecuta el sprint: Full Product Audit and Correction Pass.

Proyecto:
[Nombre del proyecto]

Repositorio:
[Ruta local o repo]

Objetivo:
Auditar todo el producto y corregir problemas reales de prioridad P0/P1/P2 dentro de alcance seguro.

Auditar:
- backend/API
- frontend
- UX/UI
- responsive
- accesibilidad
- seguridad
- performance
- SEO técnico si aplica
- formularios
- navegación
- estados vacíos
- errores
- release/rollback

Reglas críticas:
- No tocar producción sin autorización explícita.
- No tocar bases de datos productivas sin backup y gate.
- No tocar facturas/pagos/fiscalidad sin gate específico.
- No hacer refactor masivo si no aporta al hallazgo.
- No simular QA.
- No commitear secretos.
- Cerrar con validación, commit y push.

Pasos:
1. Inventariar módulos reales.
2. Clasificar hallazgos P0/P1/P2/P3/P4.
3. Corregir solo hallazgos reales y seguros.
4. Documentar bloqueados por riesgo.
5. Ejecutar validación proporcional.
6. Actualizar release log.
7. Commit/push.
8. Entregar rollback.
```

## Severidades

- P0: caída, pérdida de datos, exposición sensible, facturación/pagos rotos.
- P1: flujo principal roto, auth/RLS/write-path inseguro, conversión bloqueada.
- P2: fallo parcial, UX/responsive importante, errores técnicos visibles.
- P3: polish visual, microcopy, consistencia.
- P4: deuda técnica o documentación.

## Entrega mínima

- HEAD inicial/final.
- Módulos auditados.
- Hallazgos por severidad.
- Correcciones aplicadas.
- Bloqueos reales.
- Validación.
- Producción tocada: SÍ/NO.
- Secretos versionados: 0.
- Commit/push.
- Rollback.
