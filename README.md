# DevOps Internship - Task 3: Infrastructure as Code (IaC) with Terraform

## What is this project?

This project demonstrates how to use Infrastructure as Code (IaC) to programmatically provision and manage local environment resources[cite: 1]. 

Instead of manually running terminal strings or pulling server dependencies step-by-step, the entire deployment workflow is completely automated through a declarative configuration file using HashiCorp Terraform[cite: 1]. This specific deployment automatically pulls an official Nginx configuration image and initializes an active container instance locally[cite: 1].

## Tools Used

* **Git & GitHub** - For managing code repository hosting, versioning changes, and tracking modifications[cite: 1].
* **Terraform** - The Infrastructure as Code (IaC) engine used to safely initialize, plan, and deploy resources[cite: 1].
* **Docker** - The containerization system used to pull, configure, and isolate the running Nginx container server[cite: 1].

## How to Run this Project (Step-by-Step)

Every phase of the infrastructure setup follows a predictable lifecycle automated directly through the CLI tool:

1. **Initialization Phase (`terraform init`):** Prepares your working environment by downloading the explicit provider registry modules needed to speak to Docker[cite: 1].
2. **Planning Phase (`terraform plan`):** Runs a predictive dry-run to verify local settings and previews structural shifts before touching any active containers[cite: 1].
3. **Application Phase (`terraform apply`):** Provisioning execution that maps host configurations directly to the Docker engine, bringing up the server instantly[cite: 1].
4. **Destruction Phase (`terraform destroy`):** Automatically tears down all initialized dependencies safely, preventing lingering background runtime processes[cite: 1].
