# Day 15 – Create Volume Snapshot

## Task / Requirement
As part of data protection and backup planning, the Nautilus DevOps team needs to create a snapshot of an existing EBS volume.
This snapshot will be used as a backup of the volume data.

The task is to create a snapshot for the specified volume and ensure it completes successfully.

**Requirement details:**
- AWS Service: EBS
- Region: us-east-1
- Volume Name: devops-vol
- Snapshot Name: devops-vol-ss
- Snapshot Description: devops Snapshot
- Issue: No snapshot created for the volume
- Goal: Create a snapshot and ensure its status is completed

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Volumes**
- Identified the EBS volume named **devops-vol**
- Selected the volume and clicked on **Create snapshot**
- Provided the snapshot name as **devops-vol-ss**
- Added the description **devops Snapshot**
- Initiated snapshot creation
- Navigated to **EC2 → Snapshots**
- Verified that the snapshot status changed to **Completed**

---

## Learnings / Key Takeaways
- EBS snapshots are incremental backups stored in Amazon S3
- Only the changed data blocks are saved after the first snapshot
- Snapshots can be used to restore volumes or create new volumes
- Taking regular snapshots is a common strategy for data backup and recovery
