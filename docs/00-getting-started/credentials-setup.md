> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 — Environment Setup**

# Credential Setup

[NOVA](../../README.md) / [Chapter 0](README.md) / **Credentials**

**Status:** User action required · Secrets remain in provider consoles and n8n, never this repository.

## Credential plan

Create only credentials needed by the next session. OpenAI API use is paid. Other providers may impose changing free-tier, trial, quota, or account restrictions; verify current terms before setup.

| Credential | Needed by | Chapter 0 acceptance check |
|---|---|---|
| OpenAI API | Sessions 1–6 | n8n credential test passes; funded project and limits reviewed |
| Gmail OAuth2 | Sessions 1, 5 | Dedicated demo inbox connects with minimum scopes |
| Calendar OAuth2 | Sessions 1, 5 | Demo calendar connects with minimum scopes |
| Drive/Sheets/Docs OAuth2 | Sessions 2–4 | Demo resources are selectable; access limited to workshop artifacts |
| Firecrawl | Session 2 | Defer until Session 2; verify current auth and plan |
| Supabase | Session 3 | Defer until Session 3; service-role key stored only server-side |
| Tavily | Session 4 | Defer until Session 4; verify current auth and plan |
| Telegram | Session 5 | Defer until Session 5; intended demo chat verified |

## OpenAI

1. Create/select a dedicated OpenAI project, configure billing or credits as applicable, and set conservative usage limits.
2. Create a project API key; never paste it into `.env`, Markdown, screenshots, workflow fields, or chat.
3. In n8n choose **Credentials → Add credential → OpenAI API**.
4. Enter the API key. Set Organization ID only if your account requires it.
5. Save and run n8n's credential test.

Pricing changes; review [official OpenAI API pricing](https://platform.openai.com/pricing/) on setup day.

## Google OAuth2

1. Use a dedicated demo Google account and create a Google Cloud project.
2. Enable only the APIs required next: Gmail, Calendar, Drive, Sheets, and/or Docs.
3. Configure OAuth consent and add the demo account as a test user when applicable.
4. Create the intended n8n Google credential and copy its exact **OAuth Redirect URL**.
5. Create a Google **Web application** OAuth client and add that exact URI.
6. Enter the client ID/secret directly in n8n, sign in, approve minimum scopes, and test a fictional resource.

Always copy the redirect value displayed by the installed n8n version. Testing-mode grants may require periodic reauthorization under Google's current policy.

## Later providers

- Prefer each provider's dedicated n8n credential when available. Otherwise configure Header Auth exactly as current provider documentation requires; do not assume `Bearer` format.
- A Supabase service-role key bypasses Row Level Security. It must never appear in client content, screenshots, Git, or learner input.
- Telegram inbound webhooks to local-only n8n require deliberately configured public HTTPS; that is not part of Chapter 0.

Record only credential type, purpose, pass/fail, date, and scope notes in the [verification record](../../tests/session-00-environment-verification.md). Never record key fragments, tokens, secrets, credential IDs, or chat IDs.

## Common errors

| Symptom | Fix |
|---|---|
| OpenAI 401 | Replace/revoke the invalid project key |
| OpenAI quota/billing error | Review project billing and limits; do not repeatedly retry |
| Google `redirect_uri_mismatch` | Copy the exact n8n redirect URI into the Web OAuth client |
| Google access blocked | Verify enabled APIs, consent screen, scopes, and demo test user |
| Provider 403 | Check the current contract and grant only the minimum missing permission |

## Navigation

[← Docker installation](docker-installation.md) · [Chapter overview](README.md) · [Next: Sample data →](sample-data-setup.md)

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../../LICENSE)
