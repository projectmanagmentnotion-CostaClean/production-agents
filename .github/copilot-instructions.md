# Copilot instructions

Este repositorio contiene perfiles de agentes reutilizables, no una aplicación de producción.

Antes de modificarlo:

1. Lee `AGENTS.md`.
2. Lee `docs/SECURITY_MODEL.md` y `docs/PERMISSION_MATRIX.md`.
3. Consulta `docs/ROADMAP.md`, `docs/AGENT_AUTHORING_GUIDE.md` y `docs/AGENT_CATALOG.md`.

Reglas:

- Trabaja siempre en rama y mediante pull request.
- No omitas `tools` en un perfil.
- Mantén mínimo privilegio.
- No concedas producción, secretos, pagos, migraciones remotas ni acciones destructivas.
- Separa implementación de auditoría.
- No declares validaciones no ejecutadas.
- Añade catálogo y escenario cuando crees un agente.
- Ejecuta `ruby scripts/validate_agents.rb` antes de entregar.
- No modifiques ni elimines agentes históricos sin ruta de migración documentada.
