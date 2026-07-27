# App + Supabase Pack

Para aplicaciones React, Vite, Next.js o similares con Supabase.

## Base

Instala todo `packs/universal`.

## Especialistas

- `supabase-guardian`
- `business-rules-test-engineer`
- `frontend-ux-accessibility`

## Reglas adicionales

- `supabase-guardian` trabaja en lectura/local por defecto.
- Ninguna migración remota se ejecuta desde un custom agent general.
- Reglas monetarias deben ser deterministas y testeadas.
- La interfaz debe validar móvil, teclado y estados de error.

## Piloto recomendado

Usar primero en una rama aislada de QA con una tarea pequeña, sin credenciales de producción y con revisión humana del diff.