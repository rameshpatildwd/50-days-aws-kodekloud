# Day 09 – Enable Termination Protection for EC2 Instance

## Task / Requirement
As part of the migration, several components were created under the AWS account.
One EC2 instance was created without termination protection, which is required to prevent accidental deletion of the instance.

The task is to enable termination protection for the specified EC2 instance.

**Requirement details:**
- AWS Service: EC2
- Region: us-east-1
- Instance Name: datacenter-ec2
- Issue: Termination protection not enabled
- Goal: Enable termination protection for the EC2 instance

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Identified the EC2 instance named **datacenter-ec2**
- Selected the instance and opened **Instance settings**
- Enabled **Termination Protection**
- Saved the configuration
- Verified that termination protection was successfully enabled

---

## Learnings / Key Takeaways
- Termination protection prevents EC2 instances from being accidentally deleted
- An instance with termination protection enabled cannot be terminated until protection is disabled
- This feature is especially important for critical or production EC2 instances
- Termination protection can be managed independently of stop protection
