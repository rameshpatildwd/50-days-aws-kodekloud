# Day 01 – Create Key Pair

## Task / Requirement
As part of the initial AWS environment setup, the Nautilus DevOps team needs to launch EC2 instances securely.
To enable secure SSH access to the instances, a key pair must be created in the AWS account.

The key pair will be used during EC2 instance creation to allow authorized access to the server.

**Requirement details:**
- AWS Service: EC2
- Resource Type: Key Pair
- Key Pair Type: RSA
- Key Pair name: devops-kp
- Goal: Create a new key pair for secure EC2 access

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **EC2 → Key Pairs**
- Clicked on **Create key pair**
- Provided a name for the key pair
- Selected key pair type and file format
- Created the key pair
- Downloaded and securely stored the private key file

---

## Learnings / Key Takeaways
- Key pairs are required for secure SSH access to EC2 instances
- The private key file can be downloaded only once during creation
- Losing the private key means the instance cannot be accessed via SSH
- Key pairs are region-specific in AWS
