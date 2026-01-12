# Day 25 – Setting Up an EC2 Instance and CloudWatch Alarm

## Task / Requirement
The Nautilus DevOps team needs to launch an EC2 instance for application usage and monitor its performance.
To ensure timely alerts in case of high CPU usage, a CloudWatch alarm must be configured to notify the team.

The task is to launch an EC2 instance and create a CloudWatch alarm that triggers when CPU utilization exceeds a defined threshold.

**Requirement details:**
- AWS Service: EC2 / CloudWatch / SNS
- EC2 Instance Name: devops-ec2
- AMI: Ubuntu
- Metric: CPU Utilization
- Statistic: Average
- Threshold: ≥ 90% for 1 consecutive 5-minute period
- Alarm Name: devops-alarm
- SNS Topic: devops-sns-topic
- Goal: Monitor EC2 CPU usage and receive alerts when threshold is breached

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Instances**
- Launched a new EC2 instance named **devops-ec2** using an Ubuntu AMI
- Verified that the instance was in a running state
- Navigated to **CloudWatch → Alarms**
- Clicked on **Create alarm**
- Selected **EC2 → Per-Instance Metrics**
- Chose the **CPUUtilization** metric for the instance
- Set statistic to **Average**
- Configured the threshold to **≥ 90%** for **1 consecutive 5-minute period**
- Selected **devops-sns-topic** as the alarm action
- Created the CloudWatch alarm
- Verified that the alarm status was successfully created

---

## Learnings / Key Takeaways
- CloudWatch provides built-in metrics like CPU utilization for EC2 instances
- Alarms can be configured to trigger based on thresholds over specific time periods
- Using SNS with CloudWatch enables automated notifications for operational alerts
- Monitoring CPU utilization helps identify performance bottlenecks early
- Proper alarm configuration is essential to avoid false positives or missed alerts
