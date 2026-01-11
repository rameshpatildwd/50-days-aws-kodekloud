# Day 18 – Attach EC2 Read-Only IAM Policy

## Task / Requirement
As part of IAM access configuration, the Nautilus DevOps team needs to provide users with read-only access to the Amazon EC2 console.
Instead of creating a custom policy, the AWS managed EC2 read-only policy must be attached to allow users to view EC2 resources without making changes.

The task is to attach the EC2 read-only policy to the required IAM entity.

**Requirement details:**
- AWS Service: IAM / EC2
- Policy Type: AWS Managed Policy
- Policy Name: AmazonEC2ReadOnlyAccess
- Access Level: Read-only
- Scope: EC2 instances, AMIs, snapshots, and related resources
- Goal: Attach the EC2 read-only policy

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **IAM**
- Identified the required IAM user or group
- Opened the **Permissions** section
- Clicked on **Add permissions**
- Selected **Attach policies directly**
- Attached the **AmazonEC2ReadOnlyAccess** managed policy
- Verified that the policy was successfully attached

---

## Learnings / Key Takeaways
- AWS managed policies provide ready-to-use permission sets maintained by AWS
- AmazonEC2ReadOnlyAccess allows viewing EC2 resources without modification rights
- Managed policies reduce the risk of misconfigured permissions
- Read-only access is commonly used for monitoring, audit, and support roles
