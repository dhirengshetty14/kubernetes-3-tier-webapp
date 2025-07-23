# Kubernetes 3-Tier Web App 
<img width="40" height="40" alt="image" src="https://github.com/user-attachments/assets/e32f3040-d3b5-4245-a6cf-8eb18c68f614" />

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

## Kubernetes Manifests
Kubernetes Manifests
This repository contains the following Kubernetes manifest files:

- mongo-secret.yaml: Creates a Kubernetes Secret to store the MongoDB password securely.

- mongo-configmap.yaml: Creates a ConfigMap for non-sensitive MongoDB configuration like the database host and name.

- mongo-deployment.yaml: A Deployment that defines the desired state for the MongoDB pod.

- mongo-service.yaml: A ClusterIP service to expose the MongoDB database to other services within the cluster.

- api-deployment.yaml: A Deployment for the backend Flask API.

- api-service.yaml: A ClusterIP service to expose the backend API to the frontend.

- client-deployment.yaml: A Deployment for the frontend React application.

- client-service.yaml: A LoadBalancer or NodePort service that exposes the frontend to the internet, making it accessible to users.

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
