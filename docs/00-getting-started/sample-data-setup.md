> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 — Environment Setup**

# Fictional Sample Data Setup

[NOVA](../../README.md) / [Chapter 0](README.md) / **Sample data**

**Status:** Repository datasets static validated; Google fixtures require user action.

## Google Sheets

Create `NOVA-Career-Tracker` in the dedicated demo Drive:

| Tab | Import file |
|---|---|
| `CandidateProfile` | [`candidate-profile.csv`](../../sample-data/candidate-profile.csv) |
| `Applications` | [`applications.csv`](../../sample-data/applications.csv) |

Create `NOVA-Master-Data`:

| Tab | Import file |
|---|---|
| `UserPreferences` | [`user-preferences.csv`](../../sample-data/user-preferences.csv) |
| `Tasks` | [`tasks.csv`](../../sample-data/tasks.csv) |
| `InterviewHistory` | [`interview-history.csv`](../../sample-data/interview-history.csv) |
| `ResearchHistory` | [`research-history.csv`](../../sample-data/research-history.csv) |
| `ApprovalQueue` | [`approval-queue.csv`](../../sample-data/approval-queue.csv) |
| `ExecutionLogs` | [`execution-logs.csv`](../../sample-data/execution-logs.csv) |
| `EvaluationDataset` | [`evaluation-dataset.csv`](../../sample-data/evaluation-dataset.csv) |

For every import use comma separator and UTF-8, create/insert the named sheet, and confirm exact header order. Keep header-only sheets empty until verified workflows add fictional rows.

## Knowledge base

Create Drive folder `NOVA-Knowledge-Base` and upload:

- [`Remote-Work-Policy.pdf`](../../sample-data/knowledge-base/Remote-Work-Policy.pdf)
- [`Leave-Policy.pdf`](../../sample-data/knowledge-base/Leave-Policy.pdf)
- [`Alex-Project-Portfolio.pdf`](../../sample-data/knowledge-base/Alex-Project-Portfolio.pdf)

The PDFs are fictional upload fixtures, not ingestion evidence. Keep their Markdown sources for review.

## Gmail fixtures

Using dedicated demo accounts, place two fictional unread messages in the demo inbox:

| Subject | Intent |
|---|---|
| `Architecture review — NOVA demo` | Ask Alex to review a fictional architecture proposal |
| `Project update — Career Copilot demo` | Give a fictional delivery update with no real company/client data |

Do not contact real people. NOVA later prepares drafts only and never sends automatically.

## Calendar fixtures

Create in the demo calendar using `Asia/Kolkata`:

| Start | Duration | Title |
|---|---:|---|
| 10:00 | 30 minutes | `NOVA Architecture Review` |
| 14:00 | 45 minutes | `Career Copilot Project Update` |

Choose the next workshop test day, invite nobody, and record the exact fixture date in the verification record rather than relying on “tomorrow.”

Complete the [Session 0 verification record](../../tests/session-00-environment-verification.md) without resource IDs, public links, or personal account details.

## Navigation

[← Credentials](credentials-setup.md) · [Chapter overview](README.md) · [Session 0 verification →](../../tests/session-00-environment-verification.md)

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../../LICENSE)
