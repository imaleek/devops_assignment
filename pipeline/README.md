# Azure DevOps Pipeline Overview

This pipeline is designed to automate the build, scan, and deployment of Docker images for three components: `result`, `vote`, and `worker`. It also handles Helm chart management and deployment across multiple environments: Dev, QA, Staging, and Production.

## Key Features

- **Automated CI/CD**: The pipeline automates the entire build, scan, and deployment process, ensuring consistent and repeatable deployments.
- **Multi-Environment Support**: Seamless promotion from Dev to QA, Staging, and finally Production, with each environment isolated.
- **Security Compliance**: Docker images are scanned using WizCLI to ensure they meet security standards before deployment.
- **Helm Chart Management**: Helm charts are used to manage Kubernetes deployments, with automated versioning and artifact management.