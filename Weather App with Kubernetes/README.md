# 🌦️ WeatherApp with Kubernetes (KIND)

A local-first, cloud-native microservices application powered by Kubernetes in Docker (KIND). This project is ideal for hands-on experience with Kubernetes and microservice design patterns in a controlled local environment.

---

## 📘 Project Overview

WeatherApp is composed of the following key services:

- 🖥️ **Frontend (`weatherapp-ui`)** – The user-facing interface of the application.
- 🌤 **Weather Service (`weatherapp-weather`)** – Retrieves real-time weather data from external providers.
- 🔐 **Authentication Service (`weatherapp-auth`)** – Manages user login and access.
- 🗄️ **Database (MySQL)** – Central store for user credentials and related records.

---

## 🏗️ Architecture Breakdown

Core Kubernetes components are used to deploy and manage the application:

- 🛠 **Deployments**: For stateless service components like UI, Auth, and Weather.
- 🧱 **StatefulSet**: Used for MySQL to maintain identity and persistent storage.
- 📡 **ClusterIP Services**: Facilitate internal service discovery.
- 🌍 **Ingress (Nginx)**: Exposes services externally through HTTP routing.
- 💾 **PersistentVolumes + StorageClass**: Provide durable storage for MySQL.

![Architecture](https://github.com/user-attachments/assets/863250b2-2684-4667-89d5-f3677ae0fd54)

---

## 📦 Prerequisites

Ensure the following tools are installed before getting started:

- 🐳 **Docker** – To run containerized workloads.
- ☸️ **KIND or Minikube** – To spin up a local Kubernetes cluster.
- 🧰 **Kubectl** – To interact with your Kubernetes cluster.

---

## 🚦 Getting Started

Run the steps below to launch WeatherApp locally:

```bash
# Step 1: Clone the repo
git clone https://github.com/YOUR_GITHUB_USERNAME/weatherapp.git
cd weatherapp

# Step 2: Create a KIND cluster
kind create cluster --name weatherapp

# Step 3: Apply storage setup
kubectl apply -f storageclass.yaml

# Step 4: Deploy MySQL
kubectl apply -f statefulset.yaml
kubectl apply -f headless-service.yaml

# Step 5: (Optional) Initialize the DB
kubectl apply -f init-job.yaml

# Step 6: Deploy microservices
kubectl apply -f deployment.yaml        # Frontend
kubectl apply -f deployment\ 2.yaml     # Auth Service
kubectl apply -f deployment\ 3.yaml     # Weather Service

# Step 7: Apply service definitions
kubectl apply -f service.yaml
kubectl apply -f service\ 2.yaml
kubectl apply -f service\ 3.yaml

# Step 8: Set up Ingress
kubectl apply -f ingress.yaml

# Step 9: Check deployment status
kubectl get pods
kubectl get svc
kubectl get ingress

# Step 10: Open the app
# Ensure this entry exists in your /etc/hosts file:
# 127.0.0.1 weatherapp.local
# Then access:
http://weatherapp.local
```

---

## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/saramousa3010/)



## 👩‍💻 Author
**Sara Mousa**  
Cloud & DevOps Engineer

