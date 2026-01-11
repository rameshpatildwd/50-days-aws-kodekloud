# Day 21 – Setting Up an EC2 Instance with an Elastic IP for Application Hosting

## Task / Requirement
The Development Team requested a new EC2 instance to host an application that requires a stable public IP address.
To ensure consistent access to the application, an Elastic IP must be associated with the EC2 instance.

The task is to launch a new EC2 instance and associate an Elastic IP with it.

**Requirement details:**
- AWS Service: EC2 / Elastic IP
- EC2 Instance Name: xfusion-ec2
- AMI: Linux (e.g., Ubuntu)
- Instance Type: t2.micro
- Elastic IP Name: xfusion-eip
- Goal: Launch an EC2 instance and associate a static public IP

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Clicked on **Launch instance**
- Selected a Linux AMI (Ubuntu)
- Chose instance type **t2.micro**
- Completed the remaining instance configuration
- Launched the EC2 instance with the name **xfusion-ec2**
- Navigated to **EC2 → Elastic IPs**
- Allocated a new Elastic IP and named it **xfusion-eip**
- Associated the Elastic IP with the EC2 instance **xfusion-ec2**
- Verified that the Elastic IP was attached successfully

---

## Learnings / Key Takeaways
- Elastic IP provides a static public IP address for EC2 instances
- Associating an Elastic IP ensures the public IP does not change on instance restart
- Elastic IPs are commonly used for application hosting and external integrations
- Unused Elastic IPs incur charges, so they should be released when not needed
