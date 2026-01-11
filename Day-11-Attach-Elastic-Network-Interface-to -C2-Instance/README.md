# Day 11 – Attach Elastic Network Interface to EC2 Instance

## Task / Requirement
As part of the AWS infrastructure setup, the Nautilus DevOps team needs to update the network configuration of an EC2 instance.
An existing Elastic Network Interface (ENI) must be attached to the EC2 instance to meet networking requirements.

The task is to attach the specified network interface and ensure it is in an attached state.

**Requirement details:**
- AWS Service: EC2 / Elastic Network Interface
- Region: us-east-1
- EC2 Instance Name: nautilus-ec2
- Network Interface Name: nautilus-eni
- Issue: Network interface not attached to the instance
- Goal: Attach the ENI to the EC2 instance and verify its status

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Network Interfaces**
- Identified the network interface named **nautilus-eni**
- Verified that the EC2 instance initialization was completed
- Selected the network interface and clicked on **Attach**
- Chose the EC2 instance **nautilus-ec2**
- Completed the attachment process
- Verified that the network interface status changed to **Attached**

---

## Learnings / Key Takeaways
- Elastic Network Interfaces provide flexible networking for EC2 instances
- An ENI must be in the same Availability Zone as the EC2 instance to be attached
- Multiple ENIs can be attached to a single EC2 instance, depending on instance type
- ENIs can be detached and reattached to other instances, making them useful for failover and network management
