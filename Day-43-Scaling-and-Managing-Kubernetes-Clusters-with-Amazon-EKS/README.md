# Day 43 – Scaling and Managing Kubernetes Clusters with Amazon EKS

## Task / Requirement
The Nautilus DevOps team is preparing infrastructure for a Kubernetes-based application using Amazon EKS.
The cluster must be created using the latest stable Kubernetes version, configured for high availability,
and secured by restricting public access to the Kubernetes API server.

The task is to provision an EKS cluster with a private endpoint using the default VPC and verify that the
cluster is created successfully and ready for workloads.

**Requirement details:**
- AWS Service: Amazon EKS
- Cluster Name: devops-eks
- Kubernetes Version: 1.30
- Cluster IAM Role: eksClusterRole
- VPC: Default VPC
- Availability Zones: us-east-1a, us-east-1b, us-east-1c
- Endpoint Access: Private
- Goal: Create a secure and highly available EKS cluster

---

## Steps Performed

### IAM Role Configuration
- Created an IAM role named **eksClusterRole**
- Attached required AWS managed policies for EKS cluster operations
- Verified the role was available for EKS cluster creation

---

### EKS Cluster Creation
- Navigated to **Amazon EKS → Clusters**
- Clicked on **Create cluster**
- Provided the following configuration:
  - Cluster name: **devops-eks**
  - Kubernetes version: **1.30**
  - Cluster IAM role: **eksClusterRole**
  - VPC: **Default VPC**
  - Availability Zones: **a, b, c**
  - API server endpoint access: **Private**
- Proceeded with default networking and logging settings
- Submitted the cluster creation request

---

### Verification
- Monitored the cluster creation status from the AWS Console
- Verified that the cluster reached the **Active** state
- Confirmed the following configurations:
  - Kubernetes version is **1.30**
  - API server endpoint access is **Private**
  - Cluster spans multiple availability zones
- Ensured the cluster is ready for workload deployment  
  *(refer verification screenshot)*

---

## Learnings / Key Takeaways
- Amazon EKS provides a managed Kubernetes control plane
- Using a private EKS cluster endpoint means the Kubernetes API can only be accessed from within the VPC, reducing exposure to the public internet and improving security
- Multi-AZ deployment increases availability and fault tolerance
- Kubernetes version selection is important for security and feature support
- IAM roles control how EKS interacts with other AWS services
- EKS abstracts control plane management, allowing teams to focus on workloads
