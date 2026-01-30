# Day 30 – Enable Internet Access for Private EC2 using NAT Instance

## Task / Requirement
The Nautilus DevOps team needs to enable internet access for an EC2 instance running in a private subnet.
The private EC2 instance must be able to access the internet to upload a test file to an S3 bucket, without being directly exposed to the public internet.

To reduce cost, a **NAT Instance** is used instead of a NAT Gateway.

**Requirement details:**
- AWS Service: VPC / EC2 / S3
- VPC Name: nautilus-priv-vpc
- Private Subnet: nautilus-priv-subnet
- Private EC2 Instance: nautilus-priv-ec2
- Public Subnet: nautilus-pub-subnet
- NAT Instance Name: nautilus-nat-instance
- S3 Bucket: nautilus-nat-29603
- Verification File: nautilus-test.txt
- Goal: Enable outbound internet access for private EC2 using a NAT Instance

---

## Steps Performed
- Logged into the AWS Management Console
- Created a **public subnet** named **nautilus-pub-subnet** in the existing VPC
- Attached an **Internet Gateway** to the VPC
- Created a route table for the public subnet with `0.0.0.0/0` routed to the Internet Gateway
- Launched an EC2 instance in the public subnet using **Amazon Linux 2** and named it **nautilus-nat-instance**
- Assigned a **public IPv4 address** to the NAT instance
- Created and attached a **custom security group** allowing traffic from the private subnet
- Disabled **source/destination check** on the NAT instance
- Enabled **IP forwarding** on the NAT instance
- Installed `iptables` on the NAT instance
- Configured **MASQUERADE rules** on the correct network interface
- Saved `iptables` rules to persist across reboots
- Updated the **private subnet route table** to route `0.0.0.0/0` traffic to the NAT instance
- Verified internet access by confirming the test file **nautilus-test.txt** appeared in the S3 bucket

---

## Learnings / Key Takeaways
- A NAT Instance allows private subnet resources to access the internet without being publicly accessible
- NAT Instances require manual configuration unlike managed NAT Gateways
- Source/Destination check must be disabled for NAT Instances to forward traffic
- IP forwarding and iptables rules are mandatory for NAT functionality
- Route tables determine whether private subnets can reach the internet
- NAT Instances are cost-effective but require maintenance and monitoring
- For production and large-scale setups, **NAT Gateway** is the recommended approach
