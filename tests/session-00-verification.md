> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 · Milestone 0.1 Verification**

# Verification Checklist: Docker and Local n8n

[NOVA](../README.md) / [Milestone 0.1](../docs/00-getting-started/README.md) / **Verification**

**Verification state:** Runtime Verified  
**Evidence rule:** change a result only after recording sanitized actual output or an approved screenshot.

## Environment record

| Field | Learner value |
|---|---|
| Date and timezone | `2026-11-25 Asia/Kolkata` |
| Operating system/version | `Windows 11 Home Single Language 10.0.26300, 64-bit; Docker Engine Linux/x86_64` |
| Docker Engine version | `29.8.1` |
| Docker Compose version | `v5.5.1` |
| Git version | `2.47.1.windows.1` |
| n8n image/version | `docker.n8n.io/n8nio/n8n:2.49.5` / `2.49.5` |
| Commit SHA | `9e11a49` |

## Required checks

| ID | Verification step | Expected result | Result | Evidence |
|---|---|---|---|---|
| S0-01 | Run `docker --version` and `docker info` | CLI installed and engine reachable | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md) |
| S0-02 | Run `docker compose version` | Compose v2 reported | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md) |
| S0-03 | Run `docker compose config --quiet` | Exit code 0; no resolved secret printed | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md) |
| S0-04 | Run `docker compose pull` | Pinned n8n image pulled | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md); [capture](../assets/screenshots/00-setup/05-image-pull.png) |
| S0-05 | Run `docker compose up -d` | n8n starts without fatal error | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md); [capture](../assets/screenshots/00-setup/06-container-startup.png) |
| S0-06 | Run `docker compose ps` | n8n runs and publishes only loopback 5678 | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md); [capture](../assets/screenshots/00-setup/07-container-status.png) |
| S0-07 | Open `http://127.0.0.1:5678` | Local owner setup/editor loads | **Pass** | Health/readiness HTTP 200; [blank setup capture](../assets/screenshots/00-setup/08-owner-account.png) |
| S0-08 | Create local owner | Owner created; password not recorded | **Pass** | [2026-11-26 runtime record](evidence/milestone-00.1-persistence-verification-2026-11-26.md); [maintainer-approved home capture](../assets/screenshots/00-setup/09-n8n-home.png) |
| S0-09 | Run version command | Exact pinned n8n version returned | **Pass** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md); [capture](../assets/screenshots/00-setup/10-n8n-version.png) |
| S0-10 | Run `docker volume ls` | Project `n8n_data` volume present | **Pass** | [Filtered sanitized capture](../assets/screenshots/00-setup/11-persistent-volume.png) shows only `nova-agentic-ai-assistant_n8n_data` |
| S0-11 | Save persistence workflow, restart services, reopen it | Workflow and output survive restart | **Pass** | [2026-11-26 runtime record](evidence/milestone-00.1-persistence-verification-2026-11-26.md); [post-restart workflow capture](../assets/screenshots/00-setup/12-successful-restart.png) |
| S0-12 | Review n8n logs | No fatal startup error or restart loop | **Pass with known warning** | [Runtime record](evidence/milestone-00.1-runtime-verification-2026-11-25.md) |

## Security review

- [x] `.env` is ignored and absent from `git status`.
- [x] Existing n8n-generated encryption key was used in-memory and is not recorded here.
- [x] Maintainer confirmed on 2026-11-26 that the encryption key is backed up in a password manager; the key was not disclosed or recorded.
- [x] n8n port is published only on `127.0.0.1`.
- [x] Maintainer reviewed and approved the screenshot set; no owner email, password, encryption key, token, or credential value is visible.
- [x] Fresh runtime has no workflows and still requires initial owner setup; no later-session credential was configured during this verification.

## Persistence evidence

| Field | Value |
|---|---|
| Test workflow | `CH00 - Persistence Check` |
| Expected field | `message = NOVA persistence verified` |
| Restart command | `docker compose restart` |
| Actual result | Owner setup completed; the workflow remained listed after restart, readiness returned `status = ok`, and offline CLI execution returned the expected message with exit code 0. |

## Decision

Milestone 0.1 is **Runtime Verified** as of 2026-11-26 (Asia/Kolkata). All S0-01–S0-12 checks pass, with the documented warning on S0-12; the external encryption-key backup is maintainer-confirmed, and the screenshot evidence set is reviewed and approved.

---

<p align="center">
  <img src="../assets/diagrams/SkillUpWithSanjay.png" alt="SkillUp with Sanjay logo" width="60">
</p>
<p align="center"><strong>#SkillUpWithSanjay</strong></p>
<p align="center">
  <strong>Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect</strong><br>
  <a href="https://www.sanjaynegi.in">Website</a> ·
  <a href="https://www.linkedin.com/in/sanjay-negi-ai/">LinkedIn</a> ·
  <a href="../LICENSE">MIT License</a>
</p>
