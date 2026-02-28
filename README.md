# 🧠 FastStart Brain

Template brain files for bootstrapping an [OpenClaw](https://github.com/openclaw/openclaw) AI assistant on a fresh AWS account.

Distilled from real operational experience managing 17+ AWS apps — all account-specific details scrubbed, only patterns, lessons, and templates remain.

## Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/loki-bedlam/faststart-brain/main/install.sh | bash
```

Custom path:
```bash
OPENCLAW_WORKSPACE=~/.openclaw/workspace curl -fsSL https://raw.githubusercontent.com/loki-bedlam/faststart-brain/main/install.sh | bash
```

Or clone and copy:
```bash
git clone https://github.com/loki-bedlam/faststart-brain.git
cp faststart-brain/template/*.md ~/.openclaw/workspace/
```

> The installer **skips existing files** — safe to re-run without overwriting your customizations.

## What's Inside

| File | Purpose |
|------|---------|
| **SOUL.md** | Personality, values, boundaries — the agent's character |
| **IDENTITY.md** | Template for name, role, emoji, hard safety rules |
| **USER.md** | Template for the human's details and preferences |
| **TOOLS.md** | AWS operational playbook — VPC endpoints, ECS ARM64, CodeBuild gotchas, security baseline, 30+ battle-tested patterns |
| **AGENTS.md** | Workspace rules — memory system, safety rules, group chat behavior, heartbeat guidance |
| **CLAUDE.md** | Agent bootstrap instructions — first session setup, debugging checklist, communication style |
| **PROJECT-GUIDELINES.md** | New AWS app template — architecture, infra checklist, buildspec, cost estimates |
| **HEARTBEAT.md** | Periodic health check template for proactive monitoring |
| **APP-REGISTRY.md** | DynamoDB app catalog pattern — architecture, consumers, setup guide |

## After Install

1. **Edit `USER.md`** — fill in your name, timezone, context
2. **Edit `IDENTITY.md`** — give your agent a name and personality
3. **Edit `TOOLS.md`** — add your AWS Account ID, region, instance details
4. **Read `CLAUDE.md`** — full bootstrap instructions for first session

## Key Patterns Included

The TOOLS.md alone covers:
- Security baseline checklist (Security Hub, Inspector, VPC Flow Logs, git-secrets)
- VPC Endpoints over NAT Gateway (cost savings)
- ECS Fargate ARM64 with distroless containers
- CodeBuild/CodePipeline patterns (including the `$CODEBUILD_SRC_DIR` gotcha)
- CloudFront + Cognito auth with Lambda@Edge cookies
- DynamoDB pagination and type gotchas
- Brain backup to S3
- 30+ hard-won operational lessons

## Philosophy

These files assume:
- You're running OpenClaw on an EC2 instance with IAM role access
- You want an opinionated but adaptable starting point
- You'll customize everything — these are templates, not gospel
- Safety first: secrets in Secrets Manager, no public S3, no console federation

## License

MIT — use freely, adapt for your setup.
