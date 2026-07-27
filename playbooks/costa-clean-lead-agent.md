# Costa Clean — Lead to Quote Agent

## Objetivo

Procesar un nuevo lead, validar la solicitud, calcular un presupuesto mediante reglas deterministas, crear borradores y solicitar aprobación humana antes de enviar cualquier comunicación.

## Trigger

```text
Nuevo formulario o lead creado
```

Idempotency key recomendada: `source + external_lead_id`.

## Entradas

- nombre y contacto;
- tipo de servicio;
- propiedad, m², habitaciones y baños;
- terraza, mascotas y observaciones;
- población y código postal;
- fecha, horario y periodicidad;
- canal preferido.

## Flujo

```text
Nuevo lead
→ validar campos y consentimiento
→ buscar posible cliente duplicado
→ consultar tarifas vigentes
→ estimar horas con regla versionada
→ calcular subtotal, suplementos e IVA mediante código
→ crear cliente/lead en estado borrador
→ crear presupuesto borrador
→ redactar email o WhatsApp borrador
→ crear solicitud de aprobación
→ Anderson revisa, edita, aprueba o rechaza
→ enviar únicamente tras aprobación válida
→ registrar resultado y programar seguimiento
```

## Herramientas

| Tool | Función | Riesgo | Aprobación |
|---|---|---:|---|
| `get_lead` | Leer lead normalizado | Bajo | No |
| `find_customer_matches` | Buscar duplicados | Bajo | No |
| `get_current_rates` | Obtener tarifas versionadas | Bajo | No |
| `estimate_service_time` | Aplicar tabla/regla de estimación | Medio | No |
| `calculate_quote` | Calcular importe determinista | Medio | No |
| `create_customer_draft` | Crear borrador de cliente | Medio | No |
| `create_quote_draft` | Crear presupuesto borrador | Medio | No |
| `create_message_draft` | Redactar comunicación | Medio | No |
| `request_approval` | Pausar y solicitar revisión | Medio | No |
| `send_approved_message` | Enviar versión aprobada | Alto | Sí |
| `create_followup` | Programar seguimiento | Medio | Según política |

## Reglas confirmadas iniciales

- La tarifa y suplementos deben provenir de configuración versionada, nunca del prompt.
- El cálculo monetario se realiza en código con precisión de céntimos.
- El primer rollout no envía mensajes automáticamente.
- Si faltan datos esenciales, el agente genera una lista de preguntas y no calcula un precio definitivo.
- Solicitudes fuera de zona, urgentes, postobra, hoteles o casos especiales se escalan.

## Datos mínimos

- `companies`;
- `leads`;
- `customers`;
- `rate_versions`;
- `quote_drafts`;
- `message_drafts`;
- `approval_requests`;
- `agent_runs`;
- `tool_calls`;
- `audit_events`;
- `followups`.

Todas las tablas operativas deben incluir `company_id` y aplicar aislamiento por tenant.

## Estados

```text
received
→ needs_information | ready_for_estimate
→ quote_draft
→ awaiting_approval
→ approved | rejected | changes_requested
→ sent
→ followup_due
→ won | lost | archived
```

## Aprobación

La aprobación debe estar vinculada al hash o versión exacta de destinatario, asunto, cuerpo e importe. No puede reutilizarse tras una edición ni ejecutarse dos veces.

## Errores e idempotencia

- Eventos duplicados devuelven la ejecución existente.
- Fallos SMTP no crean un segundo presupuesto.
- Reintentos usan backoff y conservan auditoría.
- Tras varios fallos, el caso pasa a revisión humana.
- Ningún error se resuelve enviando una versión no aprobada.

## Evaluaciones

- lead completo normal;
- datos incompletos;
- cliente duplicado;
- tarifa ausente o caducada;
- dirección fuera de zona;
- suplemento especial;
- error SMTP;
- evento duplicado;
- intento de descuento no autorizado;
- prompt injection en observaciones;
- aprobación editada o reutilizada.

## Rollout

1. Simulación sin escrituras.
2. Creación de borradores.
3. Aprobación humana obligatoria.
4. Seguimientos automáticos de bajo riesgo.
5. Automatización adicional solo tras métricas y auditoría.
