# Day 04 – Enable Versioning for S3 Bucket

## Task / Requirement
As part of data management and protection requirements, the Nautilus DevOps team stores application data in an Amazon S3 bucket.
To protect objects from accidental deletion or overwrite, versioning must be enabled on the S3 bucket.

This ensures that previous versions of objects can be recovered when needed.

**Requirement details:**
- AWS Service: S3
- Resource Type: S3 Bucket
- Bucket Name: nautilus-bucket
- Issue: Object versioning not enabled
- Goal: Enable versioning for the S3 bucket

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **S3**
- Selected the required S3 bucket
- Opened the **Properties** tab
- Located the **Bucket Versioning** section
- Enabled versioning
- Saved the configuration and verified the status

---

## Learnings / Key Takeaways
- S3 versioning protects objects from accidental deletion or overwrite
- When versioning is enabled, deleting an object creates a delete marker instead of permanently removing it
- Versioning helps in data recovery and audit scenarios
- Enabling versioning can increase storage costs, so lifecycle policies are often used alongside it
