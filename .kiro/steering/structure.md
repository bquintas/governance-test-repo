# Project Structure Standards

## Required Files for Every Demo

Every demo must include:
1. `README.md` — Technical documentation
2. `ARCHITECTURE.md` — Architecture diagram and design
3. `deploy-all.ps1` — PowerShell deployment script
4. `deploy-all.sh` — Bash deployment script
5. Solution adoption tracking in CDK app file
6. Region-specific stack IDs in CDK app file

## Naming Conventions

- Demo directories: lowercase with hyphens (kebab-case)
- Python files: `snake_case.py`
- TypeScript files: `kebab-case.ts`
- CDK Stack names: PascalCase with region suffix (e.g., `MyStack-${region}`)

## Directory Layout

```
[pillar]/[demo-name]/
├── README.md
├── ARCHITECTURE.md
├── deploy-all.ps1
├── deploy-all.sh
├── infrastructure/
│   └── cdk/
│       ├── app.py or app.ts
│       ├── requirements.txt or package.json
│       └── cdk.json
└── src/
```

## Anti-Patterns

- ❌ No hardcoded regions (use shared utilities)
- ❌ No hardcoded API endpoints
- ❌ No separate LICENSE or CONTRIBUTING.md in demo directories
- ❌ No committed `cdk.out*` directories
