# Technology Stack Standards

## Infrastructure as Code

- **AWS CDK required** — TypeScript (preferred) or Python
- CloudFormation-only or Terraform are NOT accepted
- All demos must use CDK for infrastructure

## Security Requirements

- No hardcoded credentials or account-specific values
- No hardcoded regions — use environment variables or auto-detection
- No hardcoded API endpoints — generate runtime configuration
- Use AWS Secrets Manager or environment variables for sensitive data

## Cross-Platform Compatibility

- Must work on Windows (PowerShell primary shell)
- Provide both PowerShell (.ps1) and Bash (.sh) deployment scripts
- Test on Windows before considering complete

## Python

- Use `python` command (not `python3`) in PowerShell scripts
- Python 3.9+ required

## Node.js

- Node.js 18+ required for CDK
