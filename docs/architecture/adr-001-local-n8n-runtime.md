> **NOVA — Building Agentic AI Systems with n8n** · **Architecture Decision Record**

# ADR-001: Use a Single-Container Local n8n Runtime

[NOVA](../../README.md) / [Project roadmap](../PROJECT-ROADMAP.md) / **ADR-001**

**Status:** Accepted  
**Decision date:** 2026-11-25  
**Decision scope:** Session 0 workshop environment

## Context

The original plan used one n8n container with SQLite and a persistent `/home/node/.n8n` volume. Milestone 0.1 temporarily introduced a second, version-matched external task-runner container and an explicit runner authentication token. The maintainer reviewed that proposal before Milestone 0.2.

## Decision

Use the simpler supported single-container n8n architecture for the local NOVA workshop environment. Preserve the pinned n8n version, localhost-only port binding, SQLite database, explicit encryption key, configurable timezone, and persistent named volume. Do not include an external task-runner service unless a future approved milestone demonstrates that it is necessary.

## Rationale

- Planned workshop workflows prefer visual n8n nodes and do not require untrusted user-provided Code node execution.
- One container reduces memory, CPU, image downloads, secret management, version coupling, log surfaces, and beginner cognitive load.
- The environment is local, single-user, localhost-only educational infrastructure—not a hardened production deployment.
- The persistent volume and explicit encryption key retain the important backup/restore boundary.

## Task-runner implications

n8n `2.49.5` runs its supported internal JavaScript runner without the external sidecar. Current n8n guidance deprecates internal runner mode and recommends external mode for production or instances executing untrusted code. Python execution is not verified in this workshop architecture. If a future session needs Code nodes, especially Python or untrusted code, the architecture must be reviewed again before claiming support.

## Security boundary

The single-container choice is acceptable only for this isolated learning environment using trusted maintainers and fictional data. It does not authorize public exposure, multi-user production use, or arbitrary Code node execution. Credentials remain encrypted with `N8N_ENCRYPTION_KEY`, and the matching key plus the complete `n8n_data` volume must be protected together.

## Consequences

### Benefits

- Easier installation and troubleshooting for first-time learners.
- Lower resource requirements.
- One image version and one service lifecycle.
- No runner shared secret or broker configuration.

### Limitations

- Internal runner isolation is weaker than an external sidecar.
- Python Code node support is not claimed.
- The topology must be reconsidered before production use or untrusted code execution.

## Official references

- [n8n Docker installation](https://docs.n8n.io/hosting/installation/docker/)
- [n8n task-runner configuration](https://docs.n8n.io/hosting/configuration/task-runners/)
- [n8n encryption-key configuration](https://docs.n8n.io/hosting/configuration/configuration-examples/encryption-key/)

These references were reviewed on 2026-11-25. Version support must be rechecked before upgrades.

---

Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect · [MIT License](../../LICENSE)
