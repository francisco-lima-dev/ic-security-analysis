# Security Analysis Pipeline

Automated pipeline for code security analysis using Semgrep and Docker.

## What it does?

- Runs SAST (Static Application Security Testing) automatically on repositories
- Identifies potential security vulnerabilities
- Generates structured results for analysis
- Can be used as a foundation for CI/CD security pipelines

## Tech Stack

- Docker
- Semgrep
- Shell Script

## How to use: 

### 1. Build the image:

```bash

docker build -t ic-security-lab:v1 .

``` 
### Run analysis:

```bash

docker run -v $(pwd):/workspace ic-security-lab:v1 /scripts/run_semgrep.sh <repo_url>

```

### Example:

An example of the generated Semgrep result can be found at:

examples/semgrep_example.json

## Status

- [X] Docker pipeline configured
- [X] SAST analysis with Semgrep
- [ ] Integration with additional tools
- [ ] Expansion to DAST and AI - based analysis

## Notes

- This repository does not include the final research dataset
- The available results are execution examples
- The main focus is pipeline infrastructure and automation

## Context

This project was developed as part of an academic research (undergraduate research project) in cybersecurity, focused on building an automated pipeline for code analysis using different approaches (SAST, DAST and AI).

