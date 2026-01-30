# Day 29 – Establishing Secure Communication Between Public and Private VPCs via VPC Peering

## Task / Requirement
The Nautilus DevOps team needs to demonstrate secure communication between a public VPC and a private VPC using VPC peering.
A public EC2 instance should be able to communicate with a private EC2 instance without exposing the private instance to the internet.

The task is to create a VPC peering connection, configure routing, update security groups, and verify connectivity.

**Requirement details:**
- AWS Service: VPC / EC2
- Public EC2 Instance: devops-public-ec2 (Default VPC)
- Private VPC: devops-private-vpc (CIDR: 10.1.0.0/16)
- Private Subnet: devops-private-subnet (CIDR: 10.1.1.0/24)
- Private EC2 Instance: devops-private-ec2
- VPC Peering Name: devops-vpc-peering
- Goal: Enable secure communication between public and private EC2 instances

---

## Steps Performed
- Logged into the AWS Management Console
- Created a VPC peering connection named **devops-vpc-peering**
- Selected the **Default VPC** as the requester and **devops-private-vpc** as the accepter
- Accepted the VPC peering request
- Updated the **route table of the Default VPC** to route traffic to `10.1.0.0/16` via the peering connection
- Updated the **route table of the Private VPC** to route traffic to the Default VPC CIDR `172.31.0.0/16` via the peering connection
- Updated the security group of **devops-private-ec2** to allow inbound traffic from the public EC2 security group
- Added the AWS client public SSH key to the public EC2 instance:
  - Copied `/root/.ssh/id_rsa.pub` from aws-client to the `ec2-user` authorized_keys on **devops-public-ec2**
- Connected to the public EC2 instance from aws-client using SSH
- From the public EC2 instance, pinged the private EC2 instance using its private IP
- Verified successful packet transmission, confirming connectivity

---

## Verification Commands
```bash
# Copy SSH public key from aws-client to public EC2 instance
ssh-copy-id -i /root/.ssh/id_rsa.pub ec2-user@<public-ec2-ip>

# SSH into public EC2 instance from aws-client
ssh -i /root/.ssh/id_rsa ec2-user@<public-ec2-ip>

# Ping private EC2 instance from public EC2
ping <private-ec2-ip>
```

---

## Learnings / Key Takeaways
- VPC peering allows private communication between two VPCs using AWS’s internal network
- Peering can be established between VPCs in the same or different AWS accounts and regions
- VPC peering is a one-to-one connection and does not support transitive routing
- Each peered VPC must explicitly update its route tables to enable communication
- Security groups and NACLs must allow traffic between peered VPC CIDR ranges
- VPC peering is best suited for simple, small-scale VPC connectivity
- For connecting multiple VPCs in a hub-and-spoke or mesh model, **Transit Gateway** is the preferred solution
- VPC peering does not support overlapping CIDR blocks between VPCs
