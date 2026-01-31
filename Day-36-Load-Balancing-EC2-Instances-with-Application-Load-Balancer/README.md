# Day 36 – Load Balancing EC2 Instances with Application Load Balancer

## Task / Requirement
The Nautilus Development Team needs to deploy a web server on an EC2 instance and expose it using an
Application Load Balancer (ALB) to ensure availability and proper traffic routing.

The task involves creating an EC2 instance with Nginx installed via user data, configuring an ALB,
setting up a target group, and verifying that the application is accessible through the ALB DNS.

**Requirement details:**
- AWS Services: EC2 / Application Load Balancer
- EC2 Instance Name: xfusion-ec2
- AMI: Ubuntu
- Web Server: Nginx
- ALB Name: xfusion-alb
- Target Group Name: xfusion-tg
- Security Group Name: xfusion-sg
- Listener Port: 80
- Target Port: 80
- Goal: Access Nginx application using ALB DNS

---

## Steps Performed

### Security Group Configuration
- Created a security group **xfusion-sg**
- Allowed inbound HTTP traffic on port **80** from the ALB security group
- Attached **xfusion-sg** to the EC2 instance
- Updated the **default security group** attached to the ALB to allow inbound HTTP (80) from `0.0.0.0/0`

---

### EC2 Instance Setup
- Created an EC2 instance named **xfusion-ec2**
- Selected an Ubuntu AMI
- Configured user data to install and start Nginx at launch

---

### Application Load Balancer Setup
- Created an internet-facing Application Load Balancer named `xfusion-alb`
- Attached the `default` security group to the ALB
- Created a target group named `xfusion-tg`
- Configured the target group to forward traffic on port 80
- Registered `xfusion-ec2` as a target
- Verified that the target status showed Healthy

---

### Verification

**Application Load Balancer configuration from AWS Console**

![ALB configuration](/Day-36-Load-Balancing-EC2-Instances-with-Application-Load-Balancer/ALB.png)

**Successfully received the Nginx default page, confirming traffic routing through ALB**

![Nginx default page](/Day-36-Load-Balancing-EC2-Instances-with-Application-Load-Balancer/Nginx.png)

---

## Learnings / Key Takeaways
- Application Load Balancers operate at Layer 7 and route HTTP / HTTPS traffic intelligently
- Target groups determine how traffic is forwarded to backend instances
- EC2 instances must allow inbound traffic from the ALB security group
- Health checks control whether an instance receives traffic
- Application Load Balancer DNS names are typically mapped to custom domains using Route 53 (Alias records) rather than accessed directly
- User data enables automatic web server setup during instance launch
- ALB DNS name is the correct and supported way to access applications