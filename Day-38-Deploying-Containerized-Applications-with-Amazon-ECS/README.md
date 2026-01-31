# Day 38 – Deploying Containerized Applications with Amazon ECS

## Task / Requirement
The Nautilus DevOps team needs to deploy a containerized application using AWS container services.
This involves storing Docker images in a private ECR repository and deploying the application
using Amazon ECS with the Fargate launch type.

The task covers building a Docker image, pushing it to ECR, creating an ECS cluster,
defining a task, and running the application using an ECS service.

**Requirement details:**
- AWS Services: ECR / ECS (Fargate)
- ECR Repository Name: datacenter-ecr
- ECS Cluster Name: datacenter-cluster
- Task Definition Name: datacenter-taskdefinition
- ECS Service Name: datacenter-service
- Image Tag: latest
- Goal: Deploy and access a containerized application using ECS

---

## Steps Performed

### ECR Repository Setup
- Created a private ECR repository named **datacenter-ecr**
- Logged into the ECR registry from the **aws-client** host
- Built the Docker image using the Dockerfile located at `/root/pyapp`
- Tagged the image with the `latest` tag
- Pushed the Docker image to the ECR repository

```bash
cd /root/pyapp/

# Login to ECR repo from local machine
aws ecr get-login-password --region us-east-1 \
| docker login --username AWS --password-stdin 534953745331.dkr.ecr.us-east-1.amazonaws.com

# Build the docker image using Dockerfile
docker build -t datacenter-ecr .

# Verify the Image
docker images

# Tag docker image to contain ECR Repo name 
docker tag datacenter-ecr:latest \
534953745331.dkr.ecr.us-east-1.amazonaws.com/datacenter-ecr:latest

# Docker Image Push to ECR Repo 
docker push \
534953745331.dkr.ecr.us-east-1.amazonaws.com/datacenter-ecr:latest
```

### ECS Cluster and Task Definition
- Created an ECS cluster named `datacenter-cluster` using the Fargate launch type
- Created a task definition named `datacenter-taskdefinition`
- Used the Docker image from the `datacenter-ecr` repository
- Configured required CPU and memory settings
- Task definition was created using the AWS Console for simplicity which can also be created using a json file

### ECS Service Deployment
- Created an ECS service named `datacenter-service`
- Configured the service to run at least one task i.e `desired-task=1`
- Verified that the task was running successfully
- Updated the ECS service security group to allow inbound HTTP (port 80) from the internet
- Accessed the application using the public IP of the running task on port 80
- Verified successful application response in the browser: `http://<container's-public-ip:80>`

### Verification

**ECS Cluster, Service, Task & Container Configuration Details**

![ALB configuration](/Day-38-Deploying-Containerized-Applications-with-Amazon-ECS/ECS-Config.png)

**Successfully received the response in the Browser from ECS container**

![Nginx default page](/Day-38-Deploying-Containerized-Applications-with-Amazon-ECS/Application.png)

---

## Learnings / Key Takeaways
- Amazon ECR is used to securely store Docker images for ECS deployments
- Docker images must be properly tagged with the ECR repository URI before pushing
- ECS with Fargate allows running containers without managing servers i.e Fargate is serverless
- Task definitions define container configuration, CPU, memory, Env vars, Cloudwatch Logs, Volumes, and image details
- ECS services ensure desired task count and handle restarts automatically
- Security groups must allow inbound traffic for public access to containerized applications