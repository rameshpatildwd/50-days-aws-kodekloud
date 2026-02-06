# Day 45 – Configure NAT Gateway for Internet Access in a Private VPC

## Task / Requirement
The Nautilus DevOps team needs to enable internet access for an EC2 instance running in a private subnet.
The instance should not be directly exposed to the internet but must still be able to access external
services such as Amazon S3.

To achieve this, a NAT Gateway must be configured in a public subnet and the private subnet’s route
table must be updated accordingly.

**Requirement details:**
- AWS Services: VPC / EC2 / NAT Gateway / Internet Gateway / S3
- VPC Name: devops-priv-vpc
- Private Subnet: devops-priv-subnet
- Public Subnet: devops-pub-subnet
- Private EC2 Instance: devops-priv-ec2
- NAT Gateway Name: devops-natgw
- S3 Bucket: devops-nat-19217
- Goal: Enable outbound internet access for a private EC2 instance using a NAT Gateway

---

## Steps Performed

### Public Subnet Setup
- Created a public subnet named **devops-pub-subnet** in the existing VPC
- Enabled **auto-assign public IPv4** for the public subnet

---

### Internet Gateway Configuration
- Created an Internet Gateway
- Attached the Internet Gateway to **devops-priv-vpc**

---

### Public Route Table Configuration
- Created a route table named **devops-pub-rt**
- Added a default route:
  - `0.0.0.0/0 → Internet Gateway`
- Associated **devops-pub-rt** with the public subnet

---

### NAT Gateway Setup
- Allocated an Elastic IP address
- Created a NAT Gateway named **devops-natgw**
- Attached the Elastic IP to the NAT Gateway
- Placed the NAT Gateway in the public subnet

---

### Private Route Table Update
- Created a new route table for the private subnet
- Added a default route:
  - `0.0.0.0/0 → NAT Gateway`
- Associated this route table with **devops-priv-subnet**

---

### Verification
- Waited a few minutes to allow routing changes to take effect
- Verified that the cron job on **devops-priv-ec2** successfully uploaded the test file to the S3 bucket
- Confirmed the presence of the uploaded file in **devops-nat-19217**
- This confirmed successful outbound internet access from the private EC2 instance

**VPC Resource Map showing NAT Gateway configuration**

![VPC resource diagram](/Day-45-Configure-NAT-Gateway-for-Internet-Access-in-a-Private-VPC/vpc-resource-diagram.png)

**S3 bucket confirming file upload from private EC2 instance via NAT Gateway**

![S3 upload verification](/Day-45-Configure-NAT-Gateway-for-Internet-Access-in-a-Private-VPC/s3-upload.png)

---

## Learnings / Key Takeaways
- Private EC2 instances cannot access the internet without a NAT device
- NAT (Network Address Translator) Gateways provide outbound internet access while keeping instances private
- NAT Gateways must be placed in a public subnet with an Elastic IP
- Public subnets require a route to an Internet Gateway
- Private subnets route internet-bound traffic to the NAT Gateway
- NAT Gateways are AWS-managed, scalable, and more reliable than NAT instances
- Route table associations are critical for correct traffic flow
