# Day 35 – Deploying and Managing Applications on AWS

## Task / Requirement
The Nautilus DevOps team needs to deploy a web application backed by a private MySQL database.
A private RDS instance must be created, and an existing EC2 instance should connect to it securely.
The application should confirm successful database connectivity through a browser response.

The task involves provisioning RDS, configuring security groups, enabling passwordless SSH access,
deploying application code, and validating end-to-end connectivity.

**Requirement details:**
- AWS Services: EC2 / RDS / Security Groups
- RDS Instance Name: xfusion-rds
- DB Engine: MySQL 8.4.5
- Instance Class: db.t3.micro
- Storage Type: gp2
- Storage Size: 5 GiB
- Master Username: xfusion_admin
- Database Name: xfusion_db
- EC2 Instance Name: xfusion-ec2
- Application Port: 80
- Database Port: 3306
- Goal: Connect EC2-hosted application to private RDS and verify successful access

---

## Steps Performed

### RDS Setup
- Created a custom security group **rds-sg**
- Allowed inbound MySQL traffic (port **3306**) from the application EC2 security group
- Created a private RDS instance **xfusion-rds** using the sandbox template
- Selected **MySQL 8.4.5**, instance type **db.t3.micro**
- Configured storage as **gp2** with **5 GiB**
- Created database **xfusion_db** during RDS setup
- Verified that the RDS instance reached **Available** state

### EC2 & Security Group Configuration
- Updated EC2 security group to allow:
  - MySQL (3306) from **rds-sg**
  - SSH (22) from personal IP
  - HTTP (80) from the internet
- Connected to EC2 using AWS Console as suggested

### SSH Configuration & Copy application code
- On the **aws-client** host, created SSH key pair under `/root/.ssh`
- Copied the public key to the EC2 instance’s `/root/.ssh/authorized_keys`
- Verified passwordless SSH access: `ssh -i /root/.ssh/id_rsa root@3.80.26.145`
- Copied `index.php` from `aws-client` to EC2: `scp /root/index.php root@3.80.26.145:/var/www/html/`

### Updated database details in index.php
- `db_username, db_password, db_name, db_endpoint` in the `index.php` file
- **Restarted Apache service and accessed the application, but initially observed the Apache default page which means apache was serving instead of php**

### Apache Configuration Fix
- Identified that Apache was serving `index.html` before `index.php`
- Updated directory index priority: `vi /etc/apache2/mods-enabled/dir.conf`
- Moved `index.php` before `index.html`
- Restarted Apache again: `systemctl restart apache2`
- Accessed application via browser: `http://<ec2-public-ip>/`
- Successfully received message: `Connected successfully`

![Application output](/Day-35-Deploying-and-Managing-Applications-on-AWS/application.png)
![Database connection confirmation](/Day-35-Deploying-and-Managing-Applications-on-AWS/db-connect.png)


---

## Learnings / Key Takeaways
- RDS instances are accessed using endpoints, not IP addresses
- Security group relationships are critical for EC2–RDS connectivity
- Private RDS instances remain secure while still serving applications inside the VPC
- Passwordless SSH simplifies administration and automation
- Apache serves `index.html` by default unless directory priorities are updated
- Application failures often stem from configuration order, not code issues
- End-to-end verification (browser output) is essential to confirm success