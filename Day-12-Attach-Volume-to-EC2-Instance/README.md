# Day 12 – Attach Volume to EC2 Instance

## Task / Requirement
As part of the AWS infrastructure setup, the Nautilus DevOps team needs to provide additional storage to an EC2 instance.
An existing EBS volume must be attached to the EC2 instance with a specific device name.

The task is to attach the given volume to the specified EC2 instance.

**Requirement details:**
- AWS Service: EC2 / EBS
- Region: us-east-1
- EC2 Instance Name: xfusion-ec2
- EBS Volume Name: xfusion-volume
- Device Name: /dev/sdb
- Issue: Volume not attached to the instance
- Goal: Attach the EBS volume to the EC2 instance

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Volumes**
- Identified the EBS volume named **xfusion-volume**
- Verified that the EC2 instance **xfusion-ec2** was in a suitable state
- Selected the volume and clicked on **Attach volume**
- Chose the EC2 instance **xfusion-ec2**
- Set the device name to **/dev/sdb**
- Completed the attachment
- Verified that the volume status changed to **In-use**

---

## Learnings / Key Takeaways
- EBS volumes must be in the same Availability Zone as the EC2 instance to be attached
- Device names specified during attachment may appear differently inside the OS
- Attaching additional volumes allows separation of application data from root volumes
- EBS volumes can be detached and reattached to other instances when needed
