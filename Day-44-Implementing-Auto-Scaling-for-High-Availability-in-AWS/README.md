# Day 44 – Implementing Auto Scaling for High Availability in AWS

## Task / Requirement
The Nautilus DevOps team needs to deploy a highly available web application using AWS.
To achieve this, an Auto Scaling Group (ASG) is used to maintain the desired number of EC2 instances,
and an Application Load Balancer (ALB) is used to distribute incoming traffic across these instances.

The EC2 instances should automatically scale based on CPU utilization and serve web traffic using Nginx.

**Requirement details:**
- AWS Services: EC2 / Auto Scaling / ALB
- Launch Template Name: devops-launch-template
- Auto Scaling Group Name: devops-asg
- Target Group Name: devops-tg
- Application Load Balancer Name: devops-alb
- AMI: Amazon Linux 2
- Instance Type: t2.micro
- Scaling Policy: Target tracking (CPU utilization > 50%)
- Min Capacity: 1
- Desired Capacity: 1
- Max Capacity: 2
- Application Port: 80
- Goal: Achieve high availability and automatic scaling for a web application

---

## Steps Performed

### Launch Template Configuration
- Created a launch template named **devops-launch-template**
- Selected **Amazon Linux 2** AMI
- Set instance type to **t2.micro**
- Attached a custom security group (**asg-sg**)
- Added user data script to install and configure Nginx at launch

### Auto Scaling Group Setup
- Created an Auto Scaling Group named `devops-asg`
- Configured ASG to use `devops-launch-template`
- Set scaling limits:
    - Minimum: 1
    - Desired: 1
    - Maximum: 2
- Configured a target tracking scaling policy
- Scale based on average CPU utilization
- Target CPU utilization set to 50%

### Load Balancer and Target Group Configuration
- Created a target group named `devops-tg` listening on port 80
- Created an internet-facing Application Load Balancer named `devops-alb`
- Attached a custom security group (`alb-sg`) to the ALB
- Allowed inbound HTTP (port 80) traffic from `0.0.0.0/0` on alb-sg
- Associated the Auto Scaling Group with the target group

### Security Group Hardening
- Updated `asg-sg` to:
    - Allow inbound traffic only from `alb-sg`
    - Block all public inbound access
    - Ensured EC2 instances are accessible only via the ALB

### Verification
- Accessed the application using the `ALB DNS` name
- Successfully received the default Nginx page
- Attempted to access the EC2 instance directly using its public IP on port 80
- Confirmed that direct access to EC2 was blocked, as expected

---

## Learnings / Key Takeaways
- Auto Scaling Groups automatically maintain desired instance capacity
- Target tracking policies simplify scaling based on metrics like CPU utilization
- Application Load Balancers distribute traffic only to healthy instances
- EC2 instances should not be exposed directly when using an ALB
- Restricting EC2 security groups to allow traffic only from the ALB improves security
- Launch templates standardize instance configuration for scalable architectures
- High availability is achieved by combining ASG and ALB effectively