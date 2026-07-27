# Estrategia de distribución

## Estado actual

`production-agents` pertenece a la cuenta de usuario `projectmanagmentnotion-CostaClean`, no a una organización GitHub. Por tanto, la biblioteca funciona como repositorio fuente y los packs se instalan mediante pull requests en cada proyecto.

## Modelo actual

```text
production-agents
→ seleccionar pack
→ copiar perfiles al proyecto destino
→ adaptar AGENTS.md
→ validar
→ PR y revisión
```

Cada instalación registra versión y commit fuente.

## Futuro modelo de organización

Cuando los repositorios se agrupen en una organización:

- crear `.github-private` para perfiles internos o `.github` para perfiles visibles;
- almacenar perfiles globales en `/agents`;
- mantener especialistas locales en `.github/agents/` de cada repositorio;
- recordar que el perfil local tiene precedencia ante nombres duplicados;
- aplicar reglas de organización y revisión obligatoria.

## Agentes globales recomendados

- `project-continuation`
- `implementation-planner`
- `bug-root-cause-investigator`
- `pr-quality-gate`
- `security-privacy-auditor`

## Agentes locales recomendados

- `supabase-guardian`
- `business-rules-test-engineer`
- `performance-gsap-motion`
- `seo-local-structured-data`
- `release-deployment-guardian`

Los perfiles locales deben reflejar stack, comandos, datos y zonas prohibidas del proyecto concreto.
