# NOVA — Building Agentic AI Systems with n8n

> From Raw LLMs to Proactive AI Assistants:
> A Hands-on Engineering Journey.

![Status](https://img.shields.io/badge/Status-In%20Development-orange)
![n8n](https://img.shields.io/badge/n8n-Self%20Hosted-EA4B71)
![OpenAI](https://img.shields.io/badge/AI-OpenAI-412991)
![Docker](https://img.shields.io/badge/Runtime-Docker-2496ED)
![License](https://img.shields.io/badge/License-MIT-green)

## Overview

NOVA is a modular AI assistant designed to demonstrate
how modern Agentic AI applications are engineered.

The project takes learners through an incremental
journey, starting with a raw Large Language Model
and progressively introducing:

- AI Agents and Tool Calling
- Conversation and Persistent Memory
- Workflow Orchestration
- External API Integration
- Retrieval-Augmented Generation (RAG)
- Context Engineering
- Harness Engineering
- Planning and Feedback Loops
- Human-in-the-Loop Workflows
- Proactive Automation
- AI Evaluation and Observability

Rather than building isolated AI demonstrations,
we build one application that evolves with every
chapter.

## Project Philosophy

An AI application is more than a language model.

Reliable AI systems require a carefully engineered
environment consisting of tools, context, memory,
permissions, validation and execution controls.

Every specialist workflow in NOVA follows the same
development methodology:

1. Understand the purpose.
2. Define the input and output contract.
3. Build the workflow independently.
4. Test the workflow with known inputs.
5. Validate the results.
6. Expose the workflow as an AI tool.
7. Integrate it with the main assistant.
8. Perform end-to-end testing.

## Architecture

```mermaid
flowchart TD
    U[User] --> A[NOVA AI Agent]
    L[OpenAI Model] -.-> A
    M[Memory] -.-> A
    A --> P[Personal Assistant]
    A --> C[Career Copilot]
    A --> K[Knowledge Assistant]
    A --> R[Research Assistant]
    A --> I[Interview Coach]
    A --> H[Human Approval]
    P --> G[Google APIs]
    C --> J[Himalayas and Firecrawl]
    K --> S[Supabase]
    R --> T[Tavily]
    C --> D[Docs and Sheets]
    ST[Schedule Trigger] --> B[Daily Briefing]
    B --> TG[Telegram]
```

NOVA uses a central AI Agent to orchestrate
independently implemented specialist workflows.

Deterministic workflows handle predictable operations.
Large Language Models handle reasoning, interpretation
and generation where appropriate.

## Planned Capabilities

### Personal Assistant

- Retrieve and summarize unread emails.
- Search Gmail messages.
- Prepare email drafts.
- Retrieve calendar events.
- Check calendar availability.
- Create personal focus sessions.

### Career Copilot

- Discover remote jobs using Himalayas.
- Extract job descriptions.
- Analyze resume alignment.
- Identify skill gaps.
- Generate tailored resumes.
- Maintain an application tracker.

NOVA prepares job applications but does not
automatically submit them.

### Knowledge Assistant

- Ingest documents from Google Drive.
- Generate semantic embeddings.
- Store vectors in Supabase.
- Retrieve relevant knowledge.
- Generate grounded answers with sources.
- Retrieve persistent user preferences.

### Research Assistant

- Search public web sources.
- Create bounded research plans.
- Aggregate retrieved evidence.
- Generate research reports.

### Interview Coach

- Conduct role-based mock interviews.
- Evaluate technical answers.
- Provide structured feedback.
- Track interview performance.

### Proactive Assistant

- Deliver scheduled daily briefings.
- Send notifications through Telegram.
- Queue proposed actions for human review.
- Execute explicitly approved actions.
- Record execution failures.

## Learning Roadmap

The project is organized into five hands-on sessions,
each designed for approximately 90 minutes.

| Session | Topic | Deliverable |
|---|---|---|
| 0 | Environment Setup | Local n8n |
| 1 | Personal AI Assistant | NOVA v1.0 |
| 2 | Career Copilot | NOVA v2.0 |
| 3 | Knowledge Assistant | NOVA v3.0 |
| 4 | Research and Interview | NOVA v4.0 |
| 5 | Proactive AI | NOVA v5.0 |
| 6 | Advanced Topics | Optional extensions |

### Start Learning

The detailed chapters will be published progressively
as their workflows are implemented and verified.

- [Getting Started](docs/00-getting-started/README.md)

## Technology Stack

| Technology | Purpose |
|---|---|
| n8n Community Edition | Workflow orchestration |
| Docker | Local runtime |
| OpenAI API | LLM and embeddings |
| Gmail | Email management |
| Google Calendar | Scheduling |
| Google Sheets | Structured persistence |
| Google Docs | Artifact generation |
| Google Drive | Document storage |
| Himalayas | Job discovery |
| Firecrawl | Webpage extraction |
| Supabase | Vector database |
| Tavily | Web research |
| Telegram | Notifications |

## Cost

The project is designed to use free or free-tier
services wherever possible.

OpenAI API usage is paid.

External service quotas, pricing and availability
may change over time. Review their current terms
before starting.

The project uses self-hosted n8n Community Edition
rather than requiring an n8n Cloud subscription.

## Quick Start

### Prerequisites

- Git
- Docker Engine or Docker Desktop
- Docker Compose v2
- Web browser
- OpenAI API account

Clone this repository:

```bash
git clone https://github.com/sanjaynegi-ai/nova-agentic-ai-assistant.git
cd nova-agentic-ai-assistant
```

Copy `.env.example` to `.env`.

Start n8n:

```bash
docker compose pull
docker compose up -d
```

Open:

http://localhost:5678

Complete the initial n8n account setup.

Follow the Getting Started documentation before
importing or creating the specialist workflows.

## Repository Organization

- `docs/` - Step-by-step learning guides
- `workflows/` - Importable n8n workflow exports
- `assets/` - Diagrams and implementation screenshots
- `sample-data/` - Fictional demonstration datasets
- `prompts/` - Reusable AI prompts
- `database/` - Database initialization scripts
- `tests/` - Workflow and regression tests
- `instructor/` - Workshop presentation runbooks

## Who Is This Project For?

- Software engineers
- AI application developers
- Solution architects
- Students exploring Generative AI
- Automation engineers
- Technical educators

No previous n8n experience is required.

## Implementation Status

This project is under active development.

Capabilities will be marked as verified only after
successful independent and integration testing.

## Security and Privacy

- Never commit credentials or API keys.
- Use dedicated demonstration accounts.
- Use fictional data for learning exercises.
- Review generated content before using it.
- Require human approval for consequential actions.

The reference deployment is intended for local,
single-user educational use, not production hosting.

## Contributing

Suggestions, improvements and reproducible bug reports
are welcome.

## License

Original project documentation and configuration
examples are released under the MIT License.

Third-party services and software remain subject to
their respective licenses and terms.

## Acknowledgements

This project draws upon the capabilities and
documentation of n8n, OpenAI, Google, Himalayas,
Firecrawl, Supabase, Tavily and Telegram.

## Final Thought

Don't just build an AI Agent.

Engineer the tools it uses, the context it receives,
the loops it executes, the permissions it has and
the criteria by which its success is measured.

---

## About the mentor

**Sanjay Negi** brings 23+ years of industry experience and helps experienced software
engineers and technology leaders transition into high-value AI roles, including
**AI Engineer**, **Forward Deployed Engineer**, and **GenAI Architect**. He has trained
more than 1,100 experienced engineers.

<p align="center">
  <img src="assets/diagrams/SkillUpWithSanjay.png" alt="SkillUp with Sanjay logo" width="60">
</p>

<p align="center"><strong>#SkillUpWithSanjay</strong></p>

<p align="center">
  <a href="https://www.sanjaynegi.in" target="_blank" rel="noopener noreferrer">Website</a>
  &nbsp;&middot;&nbsp;
  <a href="https://www.linkedin.com/in/sanjay-negi-ai/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
</p>
