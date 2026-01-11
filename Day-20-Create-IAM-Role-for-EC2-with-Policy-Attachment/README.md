# Day 20 – Create IAM Role for EC2 with Policy Attachment

## Task / Requirement
As part of IAM configuration, the Nautilus DevOps team needs to grant AWS services secure access to other AWS resources.
Instead of using access keys, an IAM role must be created and associated with the EC2 service.

The task is to create an IAM role for EC2 and attach the specified policy to it.

**Requirement details:**
- AWS Service: IAM
- Resource Type: IAM Role
- Role Name: iamrole_jim
- Trusted Entity: AWS Service
- Use Case: EC2
- Policy Name: iampolicy_jim
- Goal: Create an IAM role for EC2 and attach the required policy

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **IAM → Roles**
- Clicked on **Create role**
- Selected **AWS service** as the trusted entity
- Chose **EC2** as the use case
- Attached the policy **iampolicy_jim**
- Provided the role name **iamrole_jim**
- Created the IAM role successfully
- Verified that the policy was attached to the role

---

## Learnings / Key Takeaways
- IAM roles allow AWS services to access other AWS resources securely
- Roles eliminate the need to store access keys on EC2 instances
- Policies attached to roles define what actions the service can perform
- IAM roles are the recommended way to grant permissions to EC2 instances
