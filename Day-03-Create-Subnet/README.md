# Day 03 – Create Subnet

## Task / Requirement
As part of the AWS network setup, the Nautilus DevOps team is designing a Virtual Private Cloud (VPC) to host application resources.
To logically separate and manage resources within the VPC, a subnet must be created.

The subnet will be used to place EC2 instances and other AWS services within a defined IP address range.

**Requirement details:**
- AWS Service: VPC
- Resource Type: Subnet
- Issue: No subnet available within the VPC for resource placement
- Goal: Create a subnet within the existing VPC

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **VPC → Subnets**
- Clicked on **Create subnet**
- Selected the appropriate VPC
- Provided a name for the subnet
- Chose an Availability Zone
- Defined the IPv4 CIDR block for the subnet
- Created the subnet successfully

---

## Learnings / Key Takeaways
- Subnets divide a VPC into smaller, manageable network segments
- Each subnet belongs to a single Availability Zone, helping with high availability design
- Choosing the correct CIDR range is important to avoid IP address exhaustion later
- Public or private behavior of a subnet depends on route table configuration, not on the subnet itself
