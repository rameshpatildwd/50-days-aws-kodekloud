# Day 37 – Managing EC2 Access with S3 Role-based Permissions

## Task / Requirement
The Nautilus DevOps team needs to allow an EC2 instance to interact with an S3 bucket securely.
Instead of using static access keys, IAM roles and policies must be used to grant permissions.

The task is to create a private S3 bucket, configure IAM policy and role, attach the role to an EC2
instance, and verify S3 access from the instance.

**Requirement details:**
- AWS Services: EC2 / S3 / IAM
- EC2 Instance Name: datacenter-ec2
- S3 Bucket Name: datacenter-s3-5921
- IAM Role Name: datacenter-role
- IAM Policy Permissions:
  - s3:PutObject
  - s3:GetObject
  - s3:ListBucket
- Goal: Enable EC2 to access S3 using IAM role-based permissions

---

## Steps Performed

### SSH Access Setup
- Logged into the **aws-client** host
- Created a new SSH key pair under `/root/.ssh`
- Copied the public key to the EC2 instance’s `/root/.ssh/authorized_keys`
- Verified passwordless SSH access to **datacenter-ec2**: `ssh -i /root/.ssh/id_rsa root@<ec2-public-ip>`

### S3 Bucket Creation
- Created a private S3 bucket named datacenter-s3-5921
- Ensured the bucket was not publicly accessible

### IAM Policy and Role Configuration
- Created a custom IAM policy allowing: `s3:PutObject`, `s3:GetObject`, `s3:ListBucket` on the `datacenter-s3-5921` bucket
- Created an IAM role named `datacenter-role`
- Attached the custom S3 access policy to the role
- Attached the IAM role to the EC2 instance `datacenter-ec2`

### Verification
- SSHed into the EC2 instance
- Uploaded a file to the S3 bucket: `aws s3 cp testfile.txt s3://datacenter-s3-5921/`
- Listed the contents of the S3 bucket: `aws s3 ls s3://datacenter-s3-5921/`
- Verified that the file upload and listing succeeded without using access keys

---

## Learnings / Key Takeaways
- IAM roles are the recommended way to grant AWS service permissions to EC2 instances
- Using IAM roles eliminates the need to store access keys on instances
- EC2 automatically retrieves temporary credentials when a role is attached
- S3 access can be tightly controlled using fine-grained IAM policies
- Role-based access improves security and simplifies credential management