# Day 08 – Enable Stop Protection for EC2 Instance

## Task / Requirement
As part of the migration, several components were added to the AWS account.
One of the EC2 instances requires additional protection to prevent accidental stop operations.

The task is to enable stop protection for the specified EC2 instance.

**Requirement details:**
- AWS Service: EC2
- Region: us-east-1
- Instance Name: devops-ec2
- Issue: Stop protection not enabled
- Goal: Enable stop protection for the EC2 instance

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Identified the EC2 instance named **devops-ec2**
- Selected the instance and opened **Instance settings**
- Enabled **Stop Protection**
- Saved the configuration
- Verified that stop protection was successfully enabled

---

## Learnings / Key Takeaways
- Stop protection prevents EC2 instances from being accidentally stopped
- This feature is useful for critical instances that must remain running
- Stop protection can be enabled or disabled without stopping the instance
- It adds an extra safety layer for production workloads
