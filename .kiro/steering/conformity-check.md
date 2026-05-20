---
inclusion: manual
---

# Demo Conformity Check

Use this checklist to audit a demo before submitting a PR. Invoke with `#conformity-check` in Kiro chat.

## Checklist

### Structure
- [ ] Demo is in the correct pillar folder
- [ ] Directory name is kebab-case
- [ ] `README.md` exists with all required sections
- [ ] `ARCHITECTURE.md` exists
- [ ] `deploy-all.ps1` exists at demo root
- [ ] `deploy-all.sh` exists at demo root
- [ ] `.gitignore` includes `cdk.out*`
- [ ] No separate LICENSE or CONTRIBUTING.md (reference root files)

### Infrastructure
- [ ] Uses AWS CDK (TypeScript or Python)
- [ ] CDK app file exists (`app.py` or `app.ts`)
- [ ] Stack ID includes region suffix: `MyStack-${region}`
- [ ] Solution adoption tracking in CDK app file (not stack class)
- [ ] Tracking format: `(uksb-do9bhieqqh)(tag:demo-name,pillar)`
- [ ] No hardcoded regions in code
- [ ] No hardcoded credentials or account IDs
- [ ] Uses shared utilities for region/account detection

### Deployment Scripts
- [ ] Both PS1 and SH versions provided
- [ ] Uses shared prerequisites script
- [ ] Ends with user-friendly deployment summary (URLs, next steps)
- [ ] PS1 uses `python` (not `python3`)
- [ ] No hardcoded regions in scripts

### README Sections
- [ ] Overview
- [ ] Prerequisites
- [ ] Deployment instructions
- [ ] Cost estimate
- [ ] Contributing (links to root CONTRIBUTING.md)
- [ ] Security (links to root CONTRIBUTING.md#security-issue-notifications)
- [ ] License (links to root LICENSE)

### Security
- [ ] Run a security scanner (e.g., ASH) — no critical/high findings
- [ ] No secrets or API keys in code
- [ ] IAM follows least privilege
