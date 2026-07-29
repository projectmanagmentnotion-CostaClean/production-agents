# App + Supabase Pack

Para aplicaciones React, Vite, Next.js o similares con Supabase.

## Base

Instala todo `packs/universal`.

## Especialistas

- `supabase-guardian`
- `business-rules-test-engineer`
- `frontend-ux-accessibility`
- `senior-figma-mobile-first-auditor`

## Cuándo usar cada agente visual

- Usa `frontend-ux-accessibility` para corregir una pantalla, componente o flujo acotado.
- Usa `senior-figma-mobile-first-auditor` para inventariar y auditar el frontend completo, definir la solución primero en móvil, validar iPad/escritorio y crear un roadmap visual coherente.

## Reglas adicionales

- `supabase-guardian` trabaja en lectura/local por defecto.
- Ninguna migración remota se ejecuta desde un custom agent general.
- Reglas monetarias deben ser deterministas y testeadas.
- La interfaz debe validar móvil, teclado y estados de error.
- La auditoría visual completa no modifica lógica de negocio, Auth, Supabase ni contratos de datos.
- Una app premium debe ser limpia, profesional, moderna, minimalista, intuitiva, clara y guiada sin perder densidad operativa.

## Piloto recomendado

Usar primero en una rama aislada de QA con una tarea pequeña, sin credenciales de producción y con revisión humana del diff.
