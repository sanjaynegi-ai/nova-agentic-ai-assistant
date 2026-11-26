> **NOVA — Building Agentic AI Systems with n8n** · **Project Governance**

# Project Roadmap

[NOVA](../README.md) / **Project Roadmap**

NOVA evolves one assistant across the following curriculum. This roadmap describes scope; evidence-backed results are recorded in the learner-facing [verification records](../tests/README.md).

## Session 0 pre-work milestones

Session 0 is pre-work and is separate from the five mandatory 90-minute implementation sessions.

| Milestone | Scope | Current gate |
|---|---|---|
| 0.1 — Docker and n8n Installation | Local Docker Compose runtime, persistence, backup, and verification plan | Runtime Verified on 2026-11-26 |
| 0.2 — Understanding n8n Fundamentals | Workflow editor, nodes, data flow, expressions, execution inspection, and an independently tested fundamentals workflow | Authorized; implementation pending |
| 0.3 — OpenAI Credentials and Connectivity Testing | Reserved; do not implement until requested | Planned |
| 0.4 — Google OAuth and API Credentials | Reserved; do not implement until requested | Planned |
| 0.5 — Sample Data Preparation | Reserved; do not implement until requested | Planned |
| 0.6 — Final Verification and GitHub Promotion | Reserved; do not implement until requested | Planned |

| Stage | Focus | Delivery | Chapter |
|---|---|---|---|
| Session 0 — Environment Setup | Self-hosted n8n, Docker, credentials, fictional data | Separate pre-work | [Open](00-getting-started/README.md) |
| Session 1 — Personal AI Assistant | Raw LLMs, agent/tool calling, personal workflows | Mandatory ~90 minutes | [Open](01-personal-assistant/README.md) |
| Session 2 — Career Copilot | External APIs, workflow tools, safe career artifacts | Mandatory ~90 minutes | [Open](02-career-copilot/README.md) |
| Session 3 — Knowledge Assistant | Persistent memory, ingestion, RAG, context engineering | Mandatory ~90 minutes | [Open](03-knowledge-assistant/README.md) |
| Session 4 — Research Assistant and Interview Coach | Planning, evidence synthesis, feedback loops | Mandatory ~90 minutes | [Open](04-research-and-interview/README.md) |
| Session 5 — Proactive Assistant | Scheduling, approval, error handling, observability | Mandatory ~90 minutes | [Open](05-proactive-assistant/README.md) |
| Optional Session 6 — Advanced Topics | Harness/loop engineering, evaluation, advanced patterns | Optional | [Open](06-advanced-topics/README.md) |

## Delivery gate for each session

1. Apply the eight-step workflow methodology from the root README.
2. Document exact nodes, contracts, credentials, expressions, prompts, examples, failures, and security.
3. Test specialist workflows independently before agent integration.
4. Provide architecture SVGs, honest screenshot placeholders/captures, instructor material, sanitized workflow exports, and verification records.
5. Complete static validation, then claim Runtime Verified only after recorded Docker-based execution.

Only the session named in a session-specific prompt may be implemented. Future-session material remains untouched until requested.

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../LICENSE)
