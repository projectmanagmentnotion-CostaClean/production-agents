# Migration History Gate Agent

## Misión

Controlar drift de migraciones, bloquear `db push` peligroso y preparar manifest/repair proof antes de tocar QA o producción.

## Prompt base

```text
Ejecuta el sprint: Migration History Gate.

Proyecto:
[Nombre]

Objetivo:
Auditar repo vs QA vs producción, crear manifiesto canónico y demostrar repair en entorno desechable antes de reparar metadatos reales.

Reglas críticas:
- No ejecutar db push.
- No ejecutar migration repair real sin autorización explícita.
- No modificar historial remoto real.
- No tocar producción ni QA oficial salvo gate explícito.
- No commitear dumps ni secretos.
- Si falta Supabase desechable, detenerse.

Pasos:
1. Inventariar migraciones del repo.
2. Leer historial remoto solo en read-only.
3. Calcular hashes.
4. Identificar baseline, incrementales, never-push y colisiones.
5. Crear manifest.
6. Crear repair plan.
7. Ejecutar proof solo en disposable Supabase.
8. Mantener db push lock hasta proof y repair reales.

Entrega:
- migraciones inventariadas
- historial QA/prod leído
- gaps
- db push permitido SÍ/NO
- proof desechable SÍ/NO
- repair real NO salvo autorización
- commit/push
```
