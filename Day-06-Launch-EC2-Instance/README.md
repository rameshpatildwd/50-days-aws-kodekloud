# Day 06 – Launch EC2 Instance

## Task / Requirement
The Nautilus DevOps team is planning a phased migration of their infrastructure to AWS.
To begin this process, they decided to launch a basic EC2 instance with standard configurations to validate their cloud setup.

The goal of this task is to create an EC2 instance with specific requirements to ensure consistency and security.

**Requirement details:**
- AWS Service: EC2
- Instance Name: xfusion-ec2
- AMI: Amazon Linux
- Instance Type: t2.micro
- Key Pair: Create a new RSA key pair named xfusion-kp
- Security Group: Default security group

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Clicked on **Launch instance**
- Selected **Amazon Linux AMI**
- Chose instance type **t2.micro**
- Created a new RSA key pair named **xfusion-kp** and downloaded the key file
- Selected the default security group
- Provided the instance name as **xfusion-ec2**
- Launched the EC2 instance successfully
- Verified that the instance was in the running state

---

## Learnings / Key Takeaways
- Launching EC2 instances is a foundational step in AWS infrastructure setup
- Choosing the correct instance type is important for cost and performance optimization
- Key pairs are mandatory for secure SSH access to EC2 instances
- Security groups control network access and must be carefully selected even for basic setups
- Reviewing instance configuration before launch helps prevent common EC2 misconfigurations