# Day 10 – Attach Elastic IP to EC2 Instance

## Task / Requirement
As part of the AWS infrastructure setup, the Nautilus DevOps team requires a stable public IP address for one of the EC2 instances.
An Elastic IP has already been allocated and needs to be associated with the EC2 instance.

The task is to attach the existing Elastic IP to the specified EC2 instance.

**Requirement details:**
- AWS Service: EC2 / Elastic IP
- Region: us-east-1
- EC2 Instance Name: devops-ec2
- Elastic IP Name: devops-ec2-eip
- Issue: Elastic IP not associated with the instance
- Goal: Attach the Elastic IP to the EC2 instance

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Elastic IPs**
- Identified the Elastic IP named **devops-ec2-eip**
- Selected the Elastic IP and clicked on **Associate Elastic IP address**
- Chose the EC2 instance **devops-ec2**
- Completed the association
- Verified that the Elastic IP was successfully attached to the instance

---

## Learnings / Key Takeaways
- Elastic IP provides a static public IPv4 address for EC2 instances
- Associating an Elastic IP ensures the public IP does not change after instance stop/start
- Unassociated Elastic IPs incur charges, so they should be released (deleted) when not in use
- Elastic IPs are region-specific and must be associated within the same region
