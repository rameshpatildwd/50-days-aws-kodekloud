# Day 05 – Create GP3 Volume

## Task / Requirement
As part of the compute infrastructure setup, the Nautilus DevOps team requires additional block storage for EC2 instances.
A new Amazon EBS volume of type **gp3** needs to be created to provide reliable and cost-effective storage.

The volume will later be attached to an EC2 instance for application or data storage.

**Requirement details:**
- AWS Service: EBS
- Resource Type: EBS Volume
- Volume Type: gp3
- Volume Name: xfusion-vol
- Size: 10 GB
- Goal: Create a gp3 EBS volume of 10 GB

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Volumes**
- Clicked on **Create volume**
- Selected the **gp3** volume type
- Specified the volume size
- Selected the appropriate Availability Zone
- Added the tags to have appropriate naming
- Created the EBS volume successfully
- Verified that the created EBS volume is in "Active" state

---

## Learnings / Key Takeaways
- gp3 volumes provide better performance at a lower cost compared to gp2
- With gp3, IOPS and throughput can be configured independently of volume size
- EBS volumes must be created in the same Availability Zone as the EC2 instance they will attach to
- Choosing the right volume type helps optimize both performance and cost
