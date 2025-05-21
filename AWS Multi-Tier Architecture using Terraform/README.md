
# ☁️AWS Multi-Tier Architecture using Terraform

This project automates the deployment of a secure, scalable, and highly available multi-tier web infrastructure on AWS using Terraform. It follows best practices for cloud architecture by implementing a layered approach that separates public and private resources.

## 🏗️ Architecture Overview

![Automated Photo]( AWS Multi-Tier Architecture.drawio.svg)


## Project Structure:
├── Modules/  
│   ├── ALB/  
│   │   ├── main.tf  
│   │   ├── output.tf  
│   │   └── variables.tf  
│   ├── ASG/  
│   │   ├── main.tf  
│   │   ├── config_file.sh.tpl  
│   │   └── variables.tf  
│   ├── DB/  
│   │   ├── main.tf  
│   │   ├── output.tf  
│   │   └── variables.tf  
│   ├── EC2/  
│   │   ├── main.tf  
│   │   ├── output.tf  
│   │   └── variables.tf  
│   ├── Security Group/  
│   │   ├── main.tf  
│   │   ├── output.tf  
│   │   └── variables.tf  
│   └── VPC/  
│       ├── main.tf  
│       ├── output.tf  
│       └── variables.tf  
├── backend.tf  
├── main.tf  
├── provider.tf  
├── variables.tf  
├──. ignore  
├── AWS Multi-Tier Architecture.drawio.svg  
└── README.md  

## 📂 Documentation

[AWS Multi-Tier Architecture using Terraform](https://www.notion.so/AWS-Multi-Tier-Architecture-using-Terraform-1e82a9d6f04280b8815bdd81d7c4e342?pvs=4)
## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/saramousa3010/)



## 👩‍💻 Author
- Sara Mousa
