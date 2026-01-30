# Day 02 – Create Security Group

## Task / Requirement
As part of the AWS infrastructure setup, the Nautilus DevOps team needs to control inbound and outbound traffic for EC2 instances.
A new security group must be created to allow secure access to the instances while restricting unnecessary network exposure.

This security group will be associated with EC2 instances to enforce network-level security.

**Requirement details:**
- AWS Service: EC2
- Resource Type: Security Group
- Name: devops-sg
- Goal: Create a security group with SSH Inbound & Default Outbound rules

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Security Groups**
- Clicked on **Create security group**
- Provided a name and description for the security group
- Selected the appropriate VPC
- Added inbound rules (SSH access)
- Verified default outbound rules
- Created the security group successfully

---

## Learnings / Key Takeaways
- Security groups act as virtual firewalls for EC2 instances
- Inbound rules control incoming traffic, while outbound rules control outgoing traffic
- Security groups are stateful, which means if traffic is allowed in one direction, the response traffic is automatically allowed back, without needing a separate rule.
- Proper security group configuration is critical for protecting AWS resources
