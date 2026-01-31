# Day 40 – Troubleshooting Internet Accessibility for an EC2-Hosted Application

## Task / Requirement
The Nautilus Development Team deployed a web application on an EC2 instance running Nginx.
The instance is located inside a public VPC, and the application is expected to be accessible
from the internet on port 80.

Despite security group rules allowing HTTP traffic, the application was not accessible.
The task is to troubleshoot the issue and ensure the application becomes publicly reachable.

**Requirement details:**
- AWS Services: EC2 / VPC / Internet Gateway
- VPC Name: xfusion-vpc
- EC2 Instance Name: xfusion-ec2
- Security Group: xfusion-sg
- Application Port: 80
- Web Server: Nginx
- Goal: Restore public internet access to the EC2-hosted application

---

## Steps Performed

### Initial Verification
- Attempted to access the application via browser: `http://18.212.134.103:80`
- Confirmed that the application was **not accessible**

### Security Group Validation
- Checked the security group **xfusion-sg** attached to the EC2 instance
- Verified inbound rule allowing:
  - HTTP (port 80) from `0.0.0.0/0`
- Confirmed security group configuration was correct

### VPC and Network Troubleshooting
- Opened the **xfusion-vpc** resource map  
- Observed that no Internet Gateway (IGW) was attached to the VPC *(refer resource map before fix)*

![VPC resource map before IGW attachment](/Day-40-Troubleshooting-Internet-Accessibility-for-an-EC2-Hosted-Application/Resource-map-before.png)

- Noted that an Internet Gateway named **xfusion-ig** already existed
- Opened the IGW and confirmed it was in **Detached** state
- Attached **xfusion-ig** to **xfusion-vpc**
  *(refer resource map after fix)*

![VPC resource map before IGW attachment](/Day-40-Troubleshooting-Internet-Accessibility-for-an-EC2-Hosted-Application/Resource-map-after.png)

### Subnet Configuration Fix
- Checked the public subnet settings
- Found that **auto-assign public IPv4** was disabled
- Enabled auto-assign public IPv4 for the public subnet

### Final Verification
- Accessed the application again from the browser: `http://18.212.134.103:80`
- Successfully received the **Nginx default page**
- Confirmed that the application was now accessible from the internet
  *(refer resource map before fix)*

![VPC resource map before IGW attachment](/Day-40-Troubleshooting-Internet-Accessibility-for-an-EC2-Hosted-Application/Nginx.png)

---

## Learnings / Key Takeaways
- A security group alone is not sufficient to provide internet access
- Public internet access requires an Internet Gateway attached to the VPC
- Public subnets must have auto-assign public IPv4 enabled for EC2 instances
- A detached Internet Gateway renders a VPC effectively private
- Troubleshooting should follow a layered approach:
- Application → Security Group → Subnet → Route Table → Internet Gateway
- Reviewing the VPC resource map helps quickly understand the overall VPC setup and identify missing or misconfigured components
- VPC misconfiguration is a common root cause of internet accessibility issues