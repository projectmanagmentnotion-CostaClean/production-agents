# Costa Clean Closeout Playbook

## Estado de referencia

Costa Clean App usa este playbook para cerrar roadmap final sin repetir gates ya cerrados.

## Gates finales

1. Migration Manifest And Disposable Repair Proof.
2. Migration History Repair Authorization Package.
3. Workspace / Tenancy / Ownership Security Model.
4. Public Quiz RPC Abuse Protection.
5. Production Functional Smoke Final.

## Reglas permanentes

- No `db push` hasta reconciliación real.
- No migration repair real sin autorización.
- No producción sin gate explícito.
- No QA oficial sin gate explícito.
- No facturas/cobros/cierres/full-submit.
- No `service_role` en frontend.
- No secretos ni privados en Git.

## Prompt para activar

```text
Lee docs/CODEX_FINAL_CLOSEOUT_AGENT.md y ejecuta el siguiente gate activo del roadmap final.
No repitas gates cerrados.
No ejecutes db push.
Si falta Supabase desechable, detente y pídelo.
```
