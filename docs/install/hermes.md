# Install on Hermes (and other open-model chat apps)

Hermes-family assistants (Nous Research's Hermes models, the Hermes chat app, or any self-hosted agent built on Hermes-style models) don't have a skill store — but they follow system prompts well, and this playbook ships as a single Markdown file for exactly that.

## Hermes chat app

1. Download [`dist/cold-outreach-playbook-bundle.md`](../../dist/cold-outreach-playbook-bundle.md).
2. Open a new chat and either attach the file (if your version supports attachments) or paste its contents as your first message.
3. Preface it with:
   > These are your operating instructions. Follow Part 1 exactly; Parts 2-8 are the reference material it mentions. Start by running the Phase 1 intake interview with me.
4. Answer the intake questions; the model delivers the campaign document.

## Self-hosted (Ollama, LM Studio, llama.cpp, or your own harness)

Load the bundle as the system prompt:

```bash
# example: Ollama Modelfile
FROM hermes3
SYSTEM """
$(cat dist/cold-outreach-playbook-bundle.md)
"""
```

Or in an OpenAI-compatible API call, put the bundle contents in the `system` message and chat normally.

## Context window note

The bundle is roughly 25k tokens. Hermes 3/4 class models handle that comfortably, but if you're running a small local model with a short context, trim the bundle: keep Part 1 (the skill), Part 2 (lead magnet generator), Part 4 (hooks and copy), and Part 5 (follow-up cadence), and drop the rest. That keeps the campaign quality while halving the size.
