# Kubernetes 3-Tier Web App

Welcome! This project is a hands-on, real-world example of deploying a modern 3-tier web application on Kubernetes. If you’re looking to understand how to take a full-stack app from local development to production-grade cloud infrastructure, you’re in the right place.

## 🚀 What’s Inside?

This repo brings together everything you need for a classic 3-tier architecture:

- **Frontend:** Built with Next.js and TypeScript for a fast, modern user experience.
- **Backend:** Node.js/TypeScript API layer, handling business logic and data flow.
- **Database:** Containerized and ready to run, so you can focus on features, not setup.

All of this is wrapped up with Docker, Kubernetes, Helm, and Terraform—so you can go from code to cloud with confidence.

## 🛠️ Why This Project?

I built this as a practical template for anyone who wants to:
- Learn how to structure and deploy a 3-tier app on Kubernetes.
- See how Docker, Helm, and Terraform fit together in a real project.
- Get a jumpstart on their own cloud-native projects.

## 🏗️ Project Structure

Here’s how things are organized:

- `src/` — All the app code (frontend & backend)
- `kubernetes/` — Kubernetes manifests for deploying each tier
- `helm-values/` — Helm values for easy, repeatable deployments
- `terraform/` — Infrastructure as code for provisioning your cloud environment
- `.db/` — Database files and seeds
- `Dockerfile*` — Containerization for both dev and prod
- `docker-compose.yml` — For spinning up everything locally
- `Jenkinsfile` — CI/CD pipeline automation

## 🌐 How It All Fits Together

1. **Develop locally** with Docker Compose.
2. **Build and test** with Docker and Jenkins.
3. **Provision infrastructure** using Terraform.
4. **Deploy to Kubernetes** using Helm and raw manifests.
5. **Scale and manage** your app like a pro.

## 🚦 Quick Start

Want to try it out? Here’s the basic flow:

```bash
# 1. Clone the repo
git clone https://github.com/dhirengshetty14/kubernetes-3-tier-webapp.git
cd kubernetes-3-tier-webapp

# 2. Spin up locally
docker-compose up --build

# 3. (Optional) Build and deploy to Kubernetes
# See kubernetes/ and helm-values/ for deployment configs

+----------------+      +------------------+      +----------------+
|                |      |                  |      |                |
|    Frontend    |----->|     Backend      |----->|    Database    |
|     (React)    |      |   (Flask API)    |      |    (MongoDB)   |
|                |      |                  |      |                |
+----------------+      +------------------+      +----------------+
      ^
      |
+----------------+
|                |
|      User      |
|                |
+----------------+
