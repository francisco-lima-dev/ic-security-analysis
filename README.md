# Security Analysis Research Pipeline

> Comparative evaluation of SAST, DAST and AI-based security tools across 50 code samples

![Docker](https://img.shields.io/badge/Docker-blue) ![Semgrep](https://img.shields.io/badge/Semgrep-blue) ![Research](https://img.shields.io/badge/Research_Project-green) ![Status](https://img.shields.io/badge/Status-In_Progress-yellow)

## About the research

This pipeline was built to support an undergraduate research project (iniciação científica) comparing the effectiveness of 5 security analysis tools across 50 code samples. The goal is to evaluate detection rates, false positive rates, and coverage across different analysis approaches:

- 2 SAST tools (static analysis)
- 1 DAST tool (dynamic analysis)
- 1 AI-based analysis tool
- 1 custom-built agent

## What it does

- Runs SAST analysis automatically on any repository
- Identifies potential security vulnerabilities
- Generates structured JSON output for research analysis
- Designed to scale — same pipeline will run DAST and AI-based tools

## Pipeline architecture

```
Repo URL
  └─→ Docker Container
        └─→ Semgrep SAST Analysis
              └─→ Structured JSON Report
```

## Tech stack

- **Docker** — isolated, reproducible analysis environment
- **Semgrep** — static application security testing (SAST)
- **Shell Script** — pipeline orchestration

## How to use

### 1. Build the image

```bash
docker build -t ic-security-lab:v1 .
```

### 2. Run analysis

```bash
docker run -v $(pwd):/workspace ic-security-lab:v1 /scripts/run_semgrep.sh <repo_url>
```

### Output example

```json
{
  "tool": "semgrep",
  "target_repo": "https://github.com/...",
  "analysis_date": "2025-05-01",
  "summary": {
    "total_findings": 12,
    "severity": { "high": 3, "medium": 7, "low": 2 }
  },
  "findings": [...]
}
```

Full example at `examples/semgrep_example.json`

## Research progress

- [x] Docker pipeline configured
- [x] SAST analysis with Semgrep
- [ ] Integration with second SAST tool
- [ ] DAST analysis
- [ ] AI-based analysis tool
- [ ] Custom agent
- [ ] AWS deployment for large-scale runs
- [ ] Comparative analysis across all 50 samples

## Notes

- This repository does not include the final research dataset
- Available results are execution examples only
- Main focus is pipeline infrastructure and reproducibility


