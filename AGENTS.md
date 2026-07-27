# AGENTS.md

## Propósito del repositorio

`production-agents` es la biblioteca central de agentes, playbooks y plantillas reutilizables para proyectos web, aplicaciones y automatizaciones empresariales.

Este repositorio define **cómo deben trabajar los agentes**. No contiene credenciales ni concede acceso automático a producción.

## Principios obligatorios

1. **Seguridad antes que velocidad.** No ejecutar acciones destructivas ni acceder a producción sin autorización explícita y documentada.
2. **Mínimo privilegio.** Cada agente solo debe declarar las herramientas necesarias para su responsabilidad.
3. **Separación de funciones.** Quien implementa no debe aprobar su propio trabajo como auditor final.
4. **Evidencia antes que afirmaciones.** No declarar una validación como superada si no fue ejecutada y registrada.
5. **Cambios revisables.** Trabajar en rama y pull request; no escribir directamente en `main` salvo instrucción humana explícita.
6. **Compatibilidad.** Los perfiles en `.github/agents/` deben seguir el formato vigente de GitHub Custom Agents.
7. **Sin secretos.** Nunca crear, imprimir o versionar tokens, cookies, claves, `.env`, dumps, credenciales o datos personales.
8. **Sin sobredeclaración.** Roadmaps, cierres y PRs deben diferenciar claramente entre validado, pendiente, bloqueado y deuda aceptada.

## Estructura

- `.github/agents/`: perfiles ejecutables por GitHub Copilot Custom Agents.
- `agents/`: agentes y prompts históricos o portables que aún no sean perfiles ejecutables.
- `templates/`: plantillas reutilizables.
- `playbooks/`: procedimientos completos para escenarios concretos.
- `docs/`: arquitectura, seguridad, catálogo, roadmap y guías de uso.

## Requisitos para cada Custom Agent

Todo archivo `.github/agents/*.agent.md` debe incluir:

- `name` y `description` claros.
- Lista explícita de `tools`; no omitirla salvo decisión justificada.
- Ámbito y objetivo.
- Flujo de trabajo obligatorio.
- Acciones permitidas y prohibidas.
- Validaciones requeridas.
- Formato de salida.
- Criterios de finalización.

Los agentes con capacidad de edición o ejecución deben usar `disable-model-invocation: true` hasta superar los escenarios de evaluación definidos.

## Niveles de riesgo

- **R0 — Lectura:** analizar, buscar, resumir y planificar.
- **R1 — Documentación:** crear o editar Markdown y configuración no ejecutable.
- **R2 — Código:** modificar código y ejecutar validaciones locales o de CI.
- **R3 — Datos/infraestructura:** migraciones, permisos, despliegues, servicios externos.
- **R4 — Producción crítica:** datos reales, pagos, facturación, usuarios, secretos o acciones irreversibles.

R3 y R4 requieren autorización humana explícita. R4 no debe automatizarse desde perfiles genéricos de esta biblioteca.

## Flujo de contribución

1. Leer este archivo y el roadmap.
2. Confirmar el alcance de la fase.
3. Crear o usar una rama dedicada.
4. Implementar cambios pequeños y coherentes.
5. Validar sintaxis, enlaces y estructura.
6. Actualizar documentación y estado real.
7. Abrir pull request en borrador.
8. Someter el cambio a revisión independiente antes del merge.

## Veredictos normalizados

- `APPROVED`
- `APPROVED_WITH_DOCUMENTED_DEBT`
- `CHANGES_REQUIRED`
- `BLOCKED`

## Prohibiciones permanentes

- No modificar proyectos externos desde esta biblioteca.
- No desplegar a producción.
- No ejecutar migraciones remotas.
- No incluir secretos de ejemplo que parezcan reales.
- No afirmar que GitHub Actions, navegadores, dispositivos o auditorías externas fueron ejecutados sin evidencia.
- No convertir un playbook histórico en Custom Agent sin revisar herramientas, límites y compatibilidad.
