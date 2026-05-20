# Governance Test Repo

Test repository for validating the GenAI Ops Demo Library governance strategy.

## What's Being Tested

- `.kiro/steering/` — Standards as code (auto-loaded by Kiro)
- `.kiro/hooks/` — Active enforcement during development
- `.github/workflows/` — Automated quality gates on PRs
- `.github/CODEOWNERS` — Review assignment and governance protection
- Branch protection — Required checks and reviews before merge

## How to Test

1. Fork this repo
2. Create a branch and add a sample demo
3. Open a PR — observe the automated checks
4. Try modifying `.kiro/` files — observe the governance guard
