# Instalación por proyecto

## 1. Elegir pack

- General: `packs/universal`.
- App con Supabase: universal + `packs/app-supabase`.
- Web inmersiva: universal + `packs/web-gsap`.
- Agentes empresariales: `packs/enterprise-agents`.

## 2. Copiar perfiles

Copia únicamente los archivos necesarios desde `.github/agents/` a `.github/agents/` del repositorio destino.

## 3. Crear gobierno local

Añade un `AGENTS.md` con:

- objetivo del producto;
- stack y arquitectura;
- comandos válidos;
- rutas críticas;
- zonas prohibidas;
- política de datos y secretos;
- reglas QA/producción;
- criterios de cierre.

## 4. Instrucciones de Copilot

Adapta `.github/copilot-instructions.md` al proyecto. No copies reglas genéricas que contradigan su arquitectura.

## 5. Validación

- Fusiona perfiles en la rama predeterminada.
- Abre GitHub Copilot Agents y comprueba que aparecen.
- Selecciona manualmente el agente.
- Ejecuta un escenario pequeño en rama aislada.
- Revisa diff y CI.
- Usa un auditor diferente al implementador.

## 6. Promoción

Mantén `disable-model-invocation: true` hasta completar el piloto. Solo considera invocación automática si el agente es estable, de bajo riesgo y ha superado sus escenarios.

## 7. Actualizaciones

Registra la versión copiada y el commit fuente. Las actualizaciones se realizan mediante PR, revisando cambios de herramientas, riesgo y contrato antes de sustituir perfiles.

## Organización

Cuando exista una organización GitHub, los perfiles globales pueden distribuirse desde `/agents` en un repositorio especial `.github` o `.github-private`. Los perfiles locales del repositorio tienen precedencia en caso de nombre duplicado.
