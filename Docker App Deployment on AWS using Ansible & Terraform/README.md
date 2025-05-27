
# 🚀 Docker App Deployment on AWS using Ansible & Terraform

This project automates the provisioning of AWS infrastructure and the deployment of a Dockerized web application using Terraform and Ansible. Terraform sets up cloud resources like VPCs and EC2 instances, while Ansible installs Docker, builds the app image, and runs it in a container.
---
## 🏗️Architecture

![AWS Diagram](Docker_Deployment_on_AWS.drawio.svg)

## 📂Project Structure

```
Project/
├── Ansible_Files/
│   ├── APP.yaml
│   ├── inventory.ini
├── Docker_Files/
│   ├── APP.py
│   ├── Dockerfile
│   └── requirements.txt
├── Infra/
│   ├── Modules/
│   │   ├── EC2/
│   │   │   ├── main.tf
│   │   │   └── variables.tf        
│   │   ├── Key_Pair/
│   │   │   ├── main.tf
│   │   │   └── output.tf
│   │   ├── Security_Group/
│   │   │   ├── main.tf
│   │   │   ├── output.tf
│   │   │   └── variables.tf
│   │   └── VPC/
│   │       ├── main.tf
│   │       ├── output.tf
│   │       └── variables.tf          
│   ├── .gitignore
│   ├── backend.tf
│   ├── main.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf   
├── Docker_Deployment_on_AWS.drawio.svg
└── README.md```
---

## 📂 Documentation

[AWS Multi-Tier Architecture using Terraform](https://treasure-smelt-dd3.notion.site/Docker-App-Deployment-on-AWS-using-Ansible-Terraform-1fe2a9d6f042802296a1c2fd9823c480?pvs=4)

## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/saramousa3010/)


## 👩‍💻 Author
**Sara Mousa**  
Cloud & DevOps Engineer

