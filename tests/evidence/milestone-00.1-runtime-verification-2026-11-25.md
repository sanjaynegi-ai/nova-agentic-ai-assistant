> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 · Milestone 0.1 Evidence**

# Runtime Verification Record: Single-Container n8n

[NOVA](../../README.md) / [Milestone 0.1](../../docs/00-getting-started/README.md) / [Verification checklist](../session-00-verification.md) / **Runtime record**

**Executed:** 2026-11-25 (Asia/Kolkata)  
**Outcome:** Partial pass; user-owned setup and workflow persistence remain pending.

## Environment

| Component | Observed value |
|---|---|
| Host | Windows 11 Home Single Language 10.0.26300, 64-bit |
| Docker Engine | 29.8.1, Linux/x86_64 engine |
| Docker Compose | v5.5.1 |
| Git | 2.47.1.windows.1 |
| Repository commit | `9e11a49` |
| n8n image | `docker.n8n.io/n8nio/n8n:2.49.5` |
| n8n runtime | `2.49.5` |

## Sanitized observed results

- `docker compose config --quiet` exited successfully when the existing generated encryption key was supplied in-memory.
- `docker compose pull` successfully resolved the pinned n8n image.
- `docker compose up -d --remove-orphans` recreated and started exactly one service: `n8n`.
- The container publishes `127.0.0.1:5678->5678/tcp`; no public host binding was observed.
- `/healthz` and `/healthz/readiness` both returned HTTP 200 with `{"status":"ok"}`.
- `n8n --version` returned `2.49.5` before and after restart.
- Named volume `nova-agentic-ai-assistant_n8n_data` is mounted at `/home/node/.n8n`.
- A container restart completed and readiness returned HTTP 200.
- Log review found no fatal startup error, crash, or restart loop.
- Workflow inventory contained zero workflows; the persistence workflow has not yet been created.
- Public settings reported that initial email-based owner setup remains available.

## Known runtime warning

n8n reports that Python 3 is absent for the internal Python task runner and that internal runner mode is deprecated. The JavaScript task runner registered successfully. This is consistent with the accepted local single-container educational architecture: do not claim Python Code-node support, and reconsider external runners before production or untrusted Code-node execution.

## Security observations

- The pre-existing generated encryption key was read only into process memory for Compose reconciliation and was never printed or written to this record.
- `.env` is ignored and untracked, but it does not yet contain `N8N_ENCRYPTION_KEY`.
- The key's secure backup location cannot be verified automatically.
- No credentials, workflow payloads, owner email, password, tokens, or private execution data appear in this record.

## Pending acceptance evidence

1. The maintainer completes owner setup using their chosen private email and password.
2. The maintainer places the existing generated encryption key in the ignored `.env` and backs it up in an approved secret store.
3. Create and execute `CH00 - Persistence Check` with `message = NOVA persistence verified`; restart n8n and confirm the workflow and output survive.
4. Capture and sanitize the required PNG evidence, replacing the corresponding placeholders.

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../../LICENSE)
