# Networking CA1 – Automated Container Deployment and Administration in the Cloud
# Introduction
This project is part of the Networking CA1 assignment. It automates the process of launching a simple web application in the cloud using:

Terraform – for creating cloud infrastructure

Ansible – for server setup and app deployment

Docker – for containerizing the web app

GitHub Actions – for automation and CI/CD

# Project Overview
Terraform creates an EC2 instance, security group, and key pair.

Ansible connects to the EC2 instance, installs Docker, and runs the container.

Docker is used to serve a static HTML file using NGINX.

GitHub Actions automates the full workflow after pushing code.

# Folder Structure

├── ansible/             # Ansible playbook for setup and deployment
│   └── playbook.yml
├── webapp/              # Web app source code and Dockerfile
│   ├── index.html
│   └── Dockerfile
├── .github/workflows/   # GitHub Actions CI/CD workflow
├── main.tf              # Terraform resources (EC2, SG, Key Pair)
├── backend.tf           # Remote backend config for Terraform state
# Steps in the Workflow
Push Code to GitHub
→ Triggers GitHub Actions.

Provision Infrastructure (Terraform)
→ Creates EC2 instance, security group, and SSH key.

Configure EC2 (Ansible)
→ Installs Docker, copies the web app, builds the Docker image, and runs the container.

Deploy App in Docker
→ NGINX serves the static HTML page on port 80.

# Final Output
Visit the public IP of the EC2 instance to see:

Hello from HTTP Docker Web Server!
# Notes
Make sure AWS keys and SSH keys are saved as GitHub Secrets.

Modify Terraform region and AMI as needed.

Use terraform init, plan, and apply to provision manually if needed.
