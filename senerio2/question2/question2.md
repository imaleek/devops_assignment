##  Which Tooling Will You Use for CI/CD and Why? How to Ensure No Downtime During Deployments?

For CI/CD, I would choose **Azure DevOps** due to its comprehensive and integrated toolset that supports the entire development lifecycle. It offers a wide suite of services, including:

- **Azure Repos:** Version control.
- **Azure Pipelines:** CI/CD automation.
- **Azure Boards:** Project management.
- **Azure Test Plans:** Testing.
- **Azure Artifacts:** Package management.

These services ensure a seamless workflow from code commit to deployment.

### Why Azure DevOps?
- **YAML-based and Classical Pipelines:** Supports both YAML-based and classical task definitions, providing flexibility in pipeline configuration.
- **Multi-language Support:** Versatile enough to handle .NET, Java, Node.js, Python, and more.
- **Integration Capabilities:** Integrates well with both Microsoft and third-party tools and services.
- **Deployment Flexibility:** Supports cloud-based and on-premises deployments, including Kubernetes clusters.
- **Marketplace:** Extensive marketplace with plugins and integrations to extend DevOps workflows.

### Ensuring No Downtime During Deployments

For the application in question, I propose deployment to a **Kubernetes** platform, leveraging its features to ensure zero downtime during deployment and improve the reliability and scalability of the solution. Specifically, we can use:

- **Pod Disruption Budgets (PDBs):** Ensure a minimum number of pods are always available during maintenance or updates. This maintains application availability by keeping a specified number of running pods.

- **Rolling Update Strategy:** Gradually replaces old pods with new ones. New pods are brought up first; if they are running correctly, traffic is redirected to them before the old pods are terminated.

By utilizing both PDBs and Rolling Update Strategy, we can achieve minimal downtime and maintain application availability during deployments.
