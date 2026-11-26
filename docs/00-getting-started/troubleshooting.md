> **NOVA — Building Agentic AI Systems with n8n** · **Session 0 · Milestone 0.1**

# Troubleshooting the Local Environment

[NOVA](../../README.md) / [Milestone 0.1](README.md) / **Troubleshooting**

Diagnose before changing configuration. Preserve logs and sanitized evidence.

| Symptom | Likely cause | Exact diagnostic/fix |
|---|---|---|
| `docker` not recognized | Docker CLI not installed or terminal predates installation | Install/reopen terminal; run `docker --version` |
| Cannot connect to daemon | Docker engine/Desktop is stopped | Start Docker; require `docker info` to succeed |
| Compose command missing | Compose v2 plugin absent | Install Docker Desktop or official Linux Compose plugin; use `docker compose`, not legacy `docker-compose` |
| `.env` required-variable error | Placeholders missing or file not copied | Copy `.env.example`; generate two different secrets and replace both placeholders |
| Port 5678 allocated | Another process/container owns the port | Run `docker ps --filter publish=5678`; stop only the known conflict or deliberately choose another loopback host port |
| n8n repeatedly restarts | Configuration, permissions, or migration error | Run `docker compose ps` and `docker compose logs --tail=200 n8n`; fix the first fatal error |
| Code node runner warning | Internal runner limitations in the single-container educational setup | Avoid Python/untrusted Code nodes; review external runners before a future milestone requires them |
| Browser cannot open n8n | Service not running/ready or wrong URL | Confirm `docker compose ps`; open `http://127.0.0.1:5678` |
| Owner form no longer appears | Instance already initialized | Sign in; do not delete the volume to force setup |
| Workflows disappear | Wrong Compose project/volume or volume deleted | Compare `docker volume ls` with Compose project name; restore verified backup if deletion occurred |
| Credentials unreadable after restore | Encryption key does not match backed-up data | Restore the original `N8N_ENCRYPTION_KEY` from the secrets vault |
| Disk usage grows | Images/logs/executions accumulate | Inspect with `docker system df`; do not run broad prune commands without identifying exact targets |

## Safe evidence commands

```text
docker compose config --quiet
docker compose ps
docker compose logs --tail=200 n8n
docker compose images
docker volume ls
```

Sanitize usernames, host paths, email addresses, tokens, IDs, and workflow payloads before sharing output.

## Escalation record

Include operating system/version, Docker and Compose versions, exact n8n version, command run, expected result, actual error, and sanitized relevant logs. Never include `.env`.

## Navigation

[← Backup and restore](backup-and-restore.md) · [Milestone overview](README.md) · [Verification checklist →](../../tests/session-00-verification.md)

---

<p align="center">
  <img src="../../assets/diagrams/SkillUpWithSanjay.png" alt="SkillUp with Sanjay logo" width="60">
</p>
<p align="center"><strong>#SkillUpWithSanjay</strong></p>
<p align="center">
  <strong>Sanjay Negi — Senior Principal Software Engineer | Gen-AI Architect</strong><br>
  <a href="https://www.sanjaynegi.in">Website</a> ·
  <a href="https://www.linkedin.com/in/sanjay-negi-ai/">LinkedIn</a> ·
  <a href="../../LICENSE">MIT License</a>
</p>
