# Diseño de agente empresarial

## Proceso

- Empresa/tenant:
- Problema:
- Actor:
- Resultado medible:
- Fuera de alcance:

## Trigger

- Evento:
- Fuente:
- Frecuencia:
- Idempotency key:

## Entradas y contexto

| Dato | Fuente | Sensibilidad | Validación |
|---|---|---:|---|
| | | | |

## Reglas deterministas

- Fórmulas:
- Tarifas:
- Límites:
- Estados:
- Fuente de verdad:

## Herramientas

| Tool | Entrada | Salida | Riesgo | Aprobación |
|---|---|---|---:|---|
| | | | | |

## Permisos

- Automático:
- Borrador automático:
- Aprobación humana:
- Doble aprobación:
- Prohibido:

## Flujo

```text
Trigger
→ validación
→ contexto
→ decisión
→ tool limitada
→ aprobación si aplica
→ ejecución
→ auditoría
→ seguimiento
```

## Datos y aislamiento

- Tablas:
- Tenant isolation:
- RLS/roles:
- Retención:
- Redacción de logs:

## Errores

- Reintentos:
- Backoff:
- Timeout:
- Dead-letter:
- Compensación/rollback:
- Escalado humano:

## Evaluaciones

- Caso normal:
- Datos incompletos:
- Duplicidad:
- Error de integración:
- Acción sensible:
- Prompt injection:
- Límite de coste/pasos:

## Rollout

1. Simulación.
2. Solo borradores.
3. Aprobación humana obligatoria.
4. Automatización limitada.
5. Revisión y rollback.
