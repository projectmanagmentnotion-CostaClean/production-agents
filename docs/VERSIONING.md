# Versionado y releases

## Esquema

La biblioteca usa Semantic Versioning:

- `MAJOR`: cambios incompatibles de contrato, herramientas, seguridad o formato de salida.
- `MINOR`: nuevos agentes, capacidades o packs compatibles.
- `PATCH`: correcciones de instrucciones, documentación o validadores sin romper contratos.

Cada perfil incluye `metadata.version`. GitHub instancia el agente desde la versión del archivo existente en el commit y rama seleccionados; el commit SHA es la referencia inmutable de ejecución.

## Estados

- `experimental`: perfil nuevo, selección manual y piloto pendiente.
- `candidate`: escenarios estáticos aprobados y piloto iniciado.
- `stable`: tres ejecuciones satisfactorias, auditoría independiente y sin P0/P1/P2 abiertos.
- `deprecated`: reemplazado, con ruta de migración.

## Release estable

Para publicar una versión:

1. Validación automática verde.
2. Catálogo y roadmap actualizados.
3. Changelog completo.
4. Auditoría con `pr-quality-gate` y `security-privacy-auditor`.
5. Sin P0, P1 o P2 abiertos.
6. Deuda P3 documentada.
7. Merge mediante PR revisado.
8. Tag `vX.Y.Z` y notas de release.

## Cambios incompatibles

Se consideran incompatibles:

- eliminar o renombrar un agente sin alias o guía;
- ampliar herramientas o riesgo sin gate;
- cambiar campos obligatorios del formato de salida;
- permitir acciones remotas antes prohibidas;
- alterar interpretación de veredictos.

## Rollback

Un rollback vuelve al tag o commit estable anterior. No se reescribe el historial publicado. Las correcciones se aplican mediante un nuevo commit y release patch.
