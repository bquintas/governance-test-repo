# Solution Adoption Tracking

## Tracking ID

**Repository Tracking ID**: `uksb-do9bhieqqh`

## Implementation

Add tracking to the **CDK app file** (`app.py` or `app.ts`), NOT in stack class constructors.

### Format

```
description="Brief description (uksb-do9bhieqqh)(tag:demo-name,pillar-name)"
```

### Rules

- Only the main/primary stack should include tracking
- Additional stacks must NOT include tracking (prevents duplicate metrics)
- Use descriptive demo name and correct pillar in tags

### Valid Pillars

- `operations-automation`
- `security`
- `cost-optimization`
- `observability`
- `resilience`

### Example

```python
MyStack(
    app,
    f"MyStack-{region}",
    description="AI-powered demo (uksb-do9bhieqqh)(tag:my-demo,observability)",
)
```
