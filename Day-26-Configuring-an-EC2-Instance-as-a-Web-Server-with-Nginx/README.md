# Day 26 – Configuring an EC2 Instance as a Web Server with Nginx

## Task / Requirement
The Nautilus DevOps team needs to set up a new EC2 instance to act as a web server for an upcoming application.
The instance must be configured automatically at launch to install and run Nginx, and it should be accessible from the internet over HTTP.

The task is to launch an EC2 instance with the required configuration using a user data script.

**Requirement details:**
- AWS Service: EC2
- Instance Name: xfusion-ec2
- AMI: Ubuntu
- Web Server: Nginx
- Configuration Method: User Data
- Network Requirement: Allow HTTP traffic on port 80
- Goal: Launch an EC2 instance and serve web traffic using Nginx

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Launched a new EC2 instance named **xfusion-ec2**
- Selected an Ubuntu AMI
- Configured a security group to allow inbound HTTP traffic on port **80**
- Added a **user data script** to install and start Nginx during instance launch
- Completed the instance launch
- Verified that the instance was running successfully
- Accessed the instance using its public IP to confirm the Nginx default page was served

---

## Learnings / Key Takeaways
- `User data` scripts allow automatic configuration of EC2 instances at launch
- Installing services via user data reduces manual setup and improves consistency
- Nginx starts serving traffic immediately once the service is running
- Security groups must explicitly allow inbound traffic for the application to be accessible
- User data runs only during the first boot of an EC2 instance
- Adding delays and explicit sudo improves reliability of user data scripts

