# Day 13 – Create AMI from EC2 Instance

## Task / Requirement
As part of the AWS infrastructure setup, the Nautilus DevOps team needs to create a reusable image from an existing EC2 instance.
This image can be used later to launch identical EC2 instances when required.

The task is to create an Amazon Machine Image (AMI) from the specified EC2 instance and ensure it becomes available.

**Requirement details:**
- AWS Service: EC2 (AMI)
- Region: us-east-1
- EC2 Instance Name: xfusion-ec2
- AMI Name: xfusion-ec2-ami
- Issue: No AMI created from the instance
- Goal: Create an AMI and ensure it reaches the available state

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Identified the EC2 instance named **xfusion-ec2**
- Selected the instance and clicked on **Actions → Image and templates → Create image**
- Provided the AMI name as **xfusion-ec2-ami**
- Reviewed the configuration and initiated AMI creation
- Navigated to **EC2 → AMIs**
- Verified that the AMI status changed to **Available**

---

## Learnings / Key Takeaways
- AMIs capture the instance configuration, root volume, and attached EBS snapshots
- An AMI can be used to launch multiple identical EC2 instances
- AMI creation may take time depending on the size of attached volumes
- Creating AMIs is a common approach for backup, recovery, and scaling workflows
