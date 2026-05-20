#!/bin/bash
# Deploy all stacks for my-good-demo

set -e

REGION="${AWS_REGION:-$(aws configure get region)}"
echo "Deploying to region: $REGION"

cd "$(dirname "$0")/infrastructure/cdk"
pip install -r requirements.txt -q
cdk deploy --all --require-approval never
