> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 · Milestone 0.1 Evidence**

# Runtime Verification Record: Owner Setup and Persistence

[NOVA](../../README.md) / [Milestone 0.1](../../docs/00-getting-started/README.md) / [Verification checklist](../session-00-verification.md) / **Persistence evidence**

**Executed:** 2026-11-26 (Asia/Kolkata)  
**Environment:** Local Docker Compose · `docker.n8n.io/n8nio/n8n:2.49.5`  
**Outcome:** Pass; screenshot evidence and external encryption-key backup confirmation complete.

## Sanitized verification results

| Check | Expected | Actual | Outcome |
|---|---|---|---|
| Readiness | `/healthz/readiness` returns `status = ok` | `status = ok` before and after restart | Pass |
| Owner setup | Initial owner setup no longer offered | Public settings returned `showSetupOnFirstLoad = false` | Pass |
| Workflow identity | `CH00 - Persistence Check` exists | Workflow ID was listed with the exact expected name | Pass |
| Workflow structure | Manual Trigger → Edit Fields | Export contained two nodes named `When clicking ‘Execute workflow’` and `Edit Fields` | Pass |
| Known output | `message = NOVA persistence verified` | Sanitized export contained the expected value | Pass |
| Restart persistence | Workflow survives service restart | Workflow remained listed after `docker compose restart n8n` and readiness recovery | Pass |
| Post-restart execution | Expected message returned | Offline CLI execution against the same persistent volume exited 0 and contained `NOVA persistence verified` | Pass |
| Fatal startup signals | No key mismatch or fatal startup error | No matching fatal signal in the restart window | Pass |

## Execution note

Running `n8n execute` inside the active service container failed because task-broker port `5679` was already occupied by the running n8n server. The service was therefore stopped, the workflow was executed once with `docker compose run --rm --no-deps n8n execute`, and the service was restarted. This uses the same Compose configuration and persistent `n8n_data` volume while avoiding the port conflict.

No owner email, password, encryption key, workflow ID, or private execution payload is recorded here.

## Completion evidence

- The maintainer confirmed on 2026-11-26 that the existing encryption key is backed up in a password manager. The key was not disclosed or recorded.
- The maintainer reviewed and approved the screenshot set, including the filtered persistent-volume capture and the post-restart workflow capture.

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../../LICENSE)
