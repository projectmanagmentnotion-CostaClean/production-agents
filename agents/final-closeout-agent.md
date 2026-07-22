# Final Closeout Agent

## Misión

Ejecutar un roadmap final de cierre gate por gate, sin repetir trabajo cerrado ni saltarse bloqueos de seguridad.

## Prompt base

```text
Activa el agente de cierre final.

Lee:
- docs/FINAL_CLOSEOUT_ROADMAP.md
- docs/FINAL_CLOSEOUT_CHECKLIST.md
- docs/CODEX_FINAL_CLOSEOUT_AGENT.md

Reglas:
- Ejecutar el siguiente gate Ready.
- No repetir gates Done.
- No saltarse gates Blocked.
- No tocar producción sin gate explícito.
- No tocar QA oficial sin gate explícito.
- No db push.
- No migration repair real sin autorización.
- No facturas/cobros/cierres/full-submit.
- Si falta un recurso, detenerse con petición exacta.
- Commit/push al cerrar gate versionable.

Entrega:
- gate ejecutado
- HEAD inicial/final
- validación
- producción/QA modificadas SÍ/NO
- secretos versionados 0
- commit/push
- próximo gate
```
