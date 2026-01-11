# Day 19 – Attach IAM Policy to IAM User

## Task / Requirement
As part of IAM access configuration, the Nautilus DevOps team needs to assign permissions to an existing IAM user.
An IAM policy has already been created and must be attached directly to the specified IAM user.

The task is to attach the given IAM policy to the IAM user.

**Requirement details:**
- AWS Service: IAM
- Resource Type: IAM User
- User Name: iamuser_kirsty
- Policy Name: iampolicy_kirsty
- Issue: Policy not attached to the user
- Goal: Attach the IAM policy to the IAM user

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **IAM → Users**
- Selected the IAM user **iamuser_kirsty**
- Opened the **Permissions** tab
- Clicked on **Add permissions**
- Chose **Attach policies directly**
- Selected the policy **iampolicy_kirsty**
- Completed the attachment
- Verified that the policy was attached successfully

---

## Learnings / Key Takeaways
- IAM policies define permissions, but have no effect until attached
- Policies can be attached directly to users, groups, or roles
- Attaching policies directly to users is suitable for limited or specific access
- Permissions take effect immediately after policy attachment
