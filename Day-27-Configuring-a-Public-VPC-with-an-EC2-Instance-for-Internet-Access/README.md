# Day 27 – Configuring a Public VPC with an EC2 Instance for Internet Access

## Task / Requirement
The Nautilus DevOps team needs to set up a public VPC to host internet-facing services.
This VPC must include a public subnet with automatic public IP assignment and an EC2 instance
that can be accessed over the internet using SSH.

The task is to configure the required networking components and launch an EC2 instance
that is publicly accessible.

**Requirement details:**
- AWS Service: VPC / EC2
- VPC Name: nautilus-pub-vpc
- Subnet Name: nautilus-pub-subnet
- Subnet Type: Public
- Auto-assign Public IPv4: Enabled
- EC2 Instance Name: nautilus-pub-ec2
- Instance Type: t2.micro
- Network Access: SSH (port 22) from internet
- Goal: Launch a publicly accessible EC2 instance inside a public VPC

---

## Steps Performed
- Logged into the AWS Management Console
- Created a VPC named **nautilus-pub-vpc**
- Created a subnet named **nautilus-pub-subnet** under the VPC
- Enabled **auto-assign public IPv4** for the subnet via subnet settings
- Created an **Internet Gateway (IGW)**
- Attached the Internet Gateway to the VPC
- Created a **Route Table**
- Added a route `0.0.0.0/0` pointing to the Internet Gateway
- Associated the route table with **nautilus-pub-subnet**
- Launched an EC2 instance named **nautilus-pub-ec2** with instance type **t2.micro**
- Configured the security group to allow inbound SSH (port 22) from the internet
- Accessed the EC2 instance from an external machine using **PuTTY** and verified successful SSH connectivity.

![EC2 SSH access verification](/Day-27-Configuring-a-Public-VPC-with-an-EC2-Instance-for-Internet-Access/EC2-ssh-access.png)

---

## Learnings / Key Takeaways
- A subnet becomes public only when it has a route to an Internet Gateway
- Auto-assign public IP ensures instances receive a public IPv4 address at launch
- Internet access requires correct configuration of VPC, subnet, IGW, and route table
- Security groups must explicitly allow inbound traffic for public access
- Route table association determines how traffic flows out of a subnet
