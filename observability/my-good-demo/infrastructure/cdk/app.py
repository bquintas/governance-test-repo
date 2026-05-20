#!/usr/bin/env python3
import os
import aws_cdk as cdk

app = cdk.App()

region = os.environ.get("AWS_REGION", os.environ.get("CDK_DEFAULT_REGION", "us-east-1"))

# Main stack with solution adoption tracking
cdk.Stack(
    app,
    f"MyGoodDemoStack-{region}",
    description="Governance test compliant demo (uksb-do9bhieqqh)(tag:my-good-demo,observability)",
    env=cdk.Environment(region=region),
)

app.synth()
