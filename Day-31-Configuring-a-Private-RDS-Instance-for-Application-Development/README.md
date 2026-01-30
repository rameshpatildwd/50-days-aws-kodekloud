# Day 31 – Configuring a Private RDS Instance for Application Development

## Task / Requirement
The Nautilus Development Team requires a managed database solution for application development and testing.
To minimize costs during the initial phase, the database must be created using AWS Free Tier–eligible resources and
should remain private within the VPC.

The task is to provision a private RDS instance using MySQL with storage autoscaling enabled.

**Requirement details:**
- AWS Service: RDS
- DB Instance Name: xfusion-rds
- DB Engine: MySQL
- Engine Version: 8.4.x
- Instance Class: db.t3.micro
- Network Type: Private
- Storage Autoscaling: Enabled
- Maximum Storage Threshold: 50 GB
- Goal: Provision a private, free-tier–eligible RDS instance for development use

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **RDS → Databases**
- Selected **Create database**
- Selected **MySQL** as the database engine
- Configured the engine version to **MySQL 8.4.x**
- Set the DB instance identifier to **xfusion-rds**
- Selected instance class **db.t3.micro**
- Ensured the database was created as a **private** instance
- Set the storage to **20 GB**
- Enabled **storage autoscaling**
- Set the maximum storage threshold to **50 GB**
- Kept remaining configurations as default
- Created the RDS instance
- Verified that the database status changed to **Available**

---

## Learnings / Key Takeaways
- Amazon RDS provides managed database engines such as MySQL, PostgreSQL, MariaDB, Oracle, SQL Server, and Amazon Aurora
- RDS handles backups, patching, and maintenance automatically, reducing operational overhead
- Private RDS instances are accessible only within the VPC and cannot be reached directly from the internet
- Applications typically connect to RDS using the database endpoint over the default engine port (e.g., MySQL on port 3306)
- Security groups control which EC2 instances or services are allowed to connect to an RDS instance
- Storage autoscaling helps prevent downtime caused by storage exhaustion without manual intervention
- Free-tier–eligible instance types are commonly used for development and testing environments
- RDS instances must be in an **Available** state before accepting connections

