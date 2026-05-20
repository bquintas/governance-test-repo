# Deploy all stacks for my-good-demo

$ErrorActionPreference = "Stop"

$Region = if ($env:AWS_REGION) { $env:AWS_REGION } else { aws configure get region }
Write-Host "Deploying to region: $Region"

Push-Location "$PSScriptRoot\infrastructure\cdk"
pip install -r requirements.txt -q
cdk deploy --all --require-approval never
Pop-Location
