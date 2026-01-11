# Day 07 – Change EC2 Instance Type

## Task / Requirement
During the migration process, the Nautilus DevOps team created several EC2 instances in different regions.
They are reviewing resource utilization and identified that one EC2 instance is underutilized.

To optimize resource usage and cost, the instance type of the EC2 instance needs to be changed.
Before making any changes, it must be ensured that the instance status checks are completed.

**Requirement details:**
- AWS Service: EC2
- Region: us-east-1
- Instance Name: devops-ec2
- Current Instance Type: t2.medium
- New Instance Type: t2.micro
- Goal: Change the instance type and ensure the instance is running after the change

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Identified the EC2 instance named **devops-ec2**
- Verified that instance status checks were completed
- Stopped the EC2 instance
- Changed the instance type from **t2.medium** to **t2.micro**
- Started the EC2 instance
- Verified that the instance was in the running state

---

## Learnings / Key Takeaways
- EC2 instance type can only be changed when the instance is stopped
- Rightsizing instances helps optimize costs and resource utilization
- Status checks should complete before making configuration changes
- Instance type changes do not affect attached EBS volumes
