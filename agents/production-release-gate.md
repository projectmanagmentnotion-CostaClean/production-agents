# Production Release Gate Agent

## Misión

Preparar y ejecutar releases productivos con backup, validación de destino, aplicación controlada, smoke test y rollback.

## Prompt base

```text
Ejecuta el sprint: Production Release Gate.

Proyecto:
[Nombre]

Cambio validado en QA/preproducción:
[commit/migración/feature]

Objetivo:
Aplicar el cambio a producción solo si todos los preflights pasan.

Reglas críticas:
- Validar destino productivo inequívocamente.
- Crear backup/export previo si hay DB/schema.
- No aplicar cambios no revisados.
- No tocar facturación/pagos/fiscalidad salvo gate explícito.
- No imprimir secretos.
- No commitear dumps.
- Si falla backup o destino, detenerse.

Pasos:
1. Estado inicial y pull.
2. Revisar cambio exacto.
3. Backup/export privado previo.
4. Validar destino productivo.
5. Aplicar con transacción/ON_ERROR_STOP si es DB.
6. Verificar post-apply.
7. Smoke sin writes peligrosos.
8. Documentar rollback.
9. Commit/push docs.

Entrega:
- producción aplicada SÍ/NO
- método usado
- backup previo SÍ/NO
- verificación post-apply
- smoke
- operaciones sensibles: 0
- secretos versionados: 0
- commit/push
- rollback exacto
```
