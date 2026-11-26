# Raw LLM

## Purpose
Demonstrate missing external access.

![Diagram](../../assets/diagrams/raw-llm.svg)

- Chat Trigger: Private chat
- Basic LLM Chain: Prompt: {{ $json.chatInput }}
- OpenAI Chat Model: Attach to Model port

## Build
For callable labs create Manual Trigger → Test Input (Edit Fields) and Execute Sub-workflow Trigger → Normalize Input; connect Test Input to Normalize Input. Declare inputs matching Normalize Input. Administrative, scheduled and raw LLM labs use their indicated triggers instead.

### 1. Chat Trigger

Purpose: Private chat.

Configuration:

```text
Private chat; response when last node finishes
```

![Configuration](../../assets/screenshots/01-personal-assistant/raw-llm-01.svg)

### 2. Basic LLM Chain

Purpose: Prompt: {{ $json.chatInput }}.

Configuration:

```text
Prompt: {{ $json.chatInput }}
```

![Configuration](../../assets/screenshots/01-personal-assistant/raw-llm-02.svg)

### 3. OpenAI Chat Model

Purpose: Attach to Model port.

Configuration:

```text
Attach to Model port; gpt-4.1-mini or supported tool-capable model
```

![Configuration](../../assets/screenshots/01-personal-assistant/raw-llm-03.svg)

## Test independently
Ask about REST APIs, then unread email; model cannot retrieve actual mail.

## Integration
For callable labs add Call n8n Workflow Tool, select saved workflow, map input with `$fromAI("field", "Describe the required input", "string")` or fixed trusted ID. Test through chat. Do not expose ingestion, scheduler, error handler or approval executor as agent tools.

## Verification
Draft configuration; inspect actual output paths and add explicit failure branches before publishing.
