> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 Verification Record**

# Verification: Chapter 0 Environment

[NOVA](../README.md) / [Chapter 0](../docs/00-getting-started/README.md) / **Verification**

| Field | Value |
|---|---|
| Record ID | `session-00-environment-2026-11-25` |
| Current state | Static Validated; partial Runtime Verified |
| Date/timezone | `2026-11-25 Asia/Kolkata` |
| Commit | `uncommitted` |
| Docker / Compose / Git | `29.8.1` / `5.5.1` / `2.47.1.windows.1` |
| n8n | `2.49.5` |
| Image digest | `sha256:c349b24d6e242b4ea14d75e6f1a90c50e348cf4b1c4512b4a0a50219ead6533d` |

## Automated evidence

| Check | Actual | Result |
|---|---|---|
| Docker server | Engine `29.8.1` responded | Pass |
| Compose config | Exit code 0 | Pass |
| Container | Up on `127.0.0.1:5678` | Pass |
| n8n CLI | `2.49.5` | Pass |
| `/healthz` | HTTP 200, `{"status":"ok"}` | Pass |
| Logs | Instance registered and version aligned; JavaScript runner registered; no fatal startup error | Pass with noted limitation |
| CSV structure | Nine files with consistent column counts | Pass |

## Owner and persistence — user completion required

- [ ] Create the owner without recording its password.
- [ ] Create and execute `CH00 - Persistence Check` exactly as documented.
- [ ] Restart with `docker compose down` and `docker compose up -d`.
- [ ] Confirm the workflow persists and add sanitized `05-persistence.png` evidence.

## Credentials — user completion required

| Credential | Result | Scope notes (no IDs/secrets) |
|---|---|---|
| OpenAI API | Pending |  |
| Gmail OAuth2 | Pending |  |
| Calendar OAuth2 | Pending |  |
| Drive/Sheets/Docs OAuth2 | Pending |  |
| Firecrawl / Supabase / Tavily / Telegram | Deferred to their sessions |  |

## Sample data — user completion required

- [ ] Both Sheets exist with exact documented tab names and schemas.
- [ ] `NOVA-Knowledge-Base` contains the three fictional PDFs.
- [ ] Two fictional unread Gmail messages exist in the demo inbox.
- [ ] Two fictional Calendar events exist; fixture date: `____________` (`Asia/Kolkata`).

## Security

- [x] Secret-pattern scan found no likely committed secrets.
- [x] n8n binds to `127.0.0.1` only.
- [x] Ignored `.env` contains no credentials.
- [ ] Screenshots are sanitized before commit.
- [ ] External resources use fictional data and dedicated demo accounts.

Repository configuration and startup are Runtime Verified. Chapter 0 remains partially verified until the user-owned checks are complete.

**Known runtime limitation:** n8n `2.49.5` reports that Python 3 is absent from the official image's internal task runner and warns that internal runner mode is deprecated. This does not block Chapter 0 or the JavaScript runner. A future session that requires Python Code nodes must add and verify the officially documented external runner topology before claiming support.

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../LICENSE)
