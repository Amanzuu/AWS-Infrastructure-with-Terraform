<div align='center'>
    <h1 align='center'> 🚀 AWS CI/CD Infrastructure with Terraform </h1>
    <p align='center'> A production-style DevOps project that provisions AWS infrastructure using Terraform and automates application deployment using GitHub Actions and AWS Systems Manager (SSM), with load balancing via Application Load Balancer. </p>
    <div>
        <img src="https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazon-aws&logoColor=white">
        <img src="https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform&logoColor=white">
        <img src="https://img.shields.io/badge/GitHub%20Actions-CI/CD-2088FF?logo=github-actions&logoColor=white">
        <img src="https://img.shields.io/badge/Nginx-Web%20Server-009639?logo=nginx&logoColor=white">
        <img src="https://img.shields.io/badge/AWS%20SSM-Secure%20Deployment-232F3E">
    </div>
</div>

---

### Project Overview

*This project demonstrates a real-world DevOps workflow where infrastructure provisioning and application deployment are fully automated using CI/CD pipelines.*

- **Infrastructure as Code:** Provision AWS resources using Terraform  
- **CI/CD Automation:** Deploy application via GitHub Actions  
- **Secure Deployment:** Use AWS Systems Manager (SSM) (no SSH required)  
- **Load Balancing:** Distribute traffic using Application Load Balancer (ALB)  
- **Auto Scaling:** Handle dynamic traffic with Auto Scaling Group (ASG)  
- **Dynamic UI:** Displays instance hostname to verify load balancing  
- **Animated Dashboard:** Modern UI with animations  

---

### Tools and Technologies

| Tool / Service | Purpose |
|------|-------------|
| AWS EC2 | Compute instances |
| AWS ALB | Load balancing |
| Auto Scaling Group | Scaling infrastructure |
| VPC | Networking |
| IAM | Access control |
| AWS Systems Manager (SSM) | Remote command execution |
| Terraform | Infrastructure provisioning |
| GitHub Actions | CI/CD pipeline |
| Nginx | Web server |

---

### Pipeline Workflow

**(1) Code Push**

- Developer pushes code to GitHub

**(2) Pipeline Trigger**

- GitHub Actions workflow starts automatically

**(3) Infrastructure Deployment**

- Terraform initializes and applies changes

**(4) Instance Discovery**

- EC2 instance IDs are fetched dynamically

**(5) Deployment via SSM**

- Commands executed remotely:
  - Update web content
  - Restart Nginx

**(6) Load Balanced Output**

- Application served via ALB across multiple instances

---

### Features

| Feature | Description |
|------|-------------|
| Automated Infrastructure | Terraform provisions complete AWS setup |
| CI/CD Pipeline | Fully automated deployment |
| Secure Deployment | No SSH, uses AWS SSM |
| Load Balancing | Traffic distributed via ALB |
| Auto Scaling | Handles dynamic load |
| Dynamic UI | Displays instance hostname |
| Animated Dashboard | Modern UI with animations |

---

### Setup on Your Machine

#### Prerequisites

- AWS Account  
- Terraform installed  
- Git installed  
- GitHub repository  
- IAM credentials configured in GitHub Secrets  

---

