# Day 28 – Creating a Private ECR Repository

## Task / Requirement
The Nautilus DevOps team needs to store and manage Docker images for a containerized application.
To achieve this, a private Amazon Elastic Container Registry (ECR) repository must be created.
A Docker image built from an existing Dockerfile must then be pushed to this repository.

The task is to create a private ECR repository, build a Docker image, and push it to ECR with the `latest` tag.

**Requirement details:**
- AWS Service: ECR
- Repository Name: nautilus-ecr
- Repository Type: Private
- Dockerfile Location: `/root/pyapp` on aws-client
- Image Tag: latest
- Goal: Build and push a Docker image to a private ECR repository

---

## Steps Performed
- Logged into the **aws-client** host
- Created a private ECR repository named **nautilus-ecr**
- Navigated to the Dockerfile location `/root/pyapp`
- Built the Docker image using the Dockerfile
- Retrieved the ECR authentication token using AWS CLI
- Authenticated the Docker client to the ECR registry
- Tagged the Docker image with the ECR repository URI and `latest` tag
- Pushed the Docker image to the ECR repository
- Verified that the image was successfully pushed by checking the ECR repository

---

## Commands Used
```bash
# Create ECR repository
aws ecr create-repository --repository-name nautilus-ecr

# Authenticate Docker to ECR
aws ecr get-login-password --region us-east-1 \
| docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com

# Build Docker image
docker build -t nautilus-ecr:latest .

# Tag Docker image for ECR
docker tag nautilus-ecr:latest <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/nautilus-ecr:latest

# Push image to ECR
docker push <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/nautilus-ecr:latest
```

---

## Learnings / Key Takeaways
- Amazon ECR provides a secure and private registry for Docker images
- Docker clients must authenticate to ECR before pushing or pulling images
- Image tagging is required to associate a local image with an ECR repository
- ECR integrates seamlessly with AWS services like ECS and EKS
- Verifying images in the ECR console confirms successful push operations
- Docker images must be correctly tagged with the ECR repository URI and name; otherwise, the image cannot be pushed to ECR
