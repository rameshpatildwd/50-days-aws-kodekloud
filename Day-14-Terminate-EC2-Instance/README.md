# Day 14 – Terminate EC2 Instance

## Task / Requirement
During the migration process, some EC2 instances became obsolete and are no longer required.
To clean up unused resources and avoid unnecessary costs, one EC2 instance needs to be terminated.

The task is to delete the specified EC2 instance and ensure it reaches the terminated state.

**Requirement details:**
- AWS Service: EC2
- Region: us-east-1
- EC2 Instance Name: datacenter-ec2
- Issue: Instance no longer required
- Goal: Terminate the EC2 instance and confirm its state

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Identified the EC2 instance named **datacenter-ec2**
- Verified that termination protection was disabled
- Selected the instance and chose **Terminate instance**
- Confirmed the termination action
- Monitored the instance state until it changed to **Terminated**

---

## Learnings / Key Takeaways
- Terminating an EC2 instance permanently deletes the instance
- Termination protection must be disabled before an instance can be terminated
- Once terminated, an EC2 instance cannot be recovered
- Cleaning up unused EC2 instances helps reduce AWS costs
