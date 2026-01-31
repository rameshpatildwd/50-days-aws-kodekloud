# Day 39 – Hosting a Static Website on AWS S3

## Task / Requirement
The Nautilus DevOps team needs to host a static website for public access using Amazon S3.
The website should be accessible directly through an S3 website endpoint.

The task is to create an S3 bucket, configure static website hosting, allow public access,
upload the website content, and verify accessibility.

**Requirement details:**
- AWS Service: S3
- Bucket Name: nautilus-web-8714
- Website Type: Static Website
- Index Document: index.html
- Access Type: Public
- Goal: Host and access a static website using S3

---

## Steps Performed

### S3 Bucket Creation
- Created an S3 bucket named **nautilus-web-8714**
- Disabled **Block all public access** during bucket creation
- Completed bucket creation

### Static Website Hosting Configuration
- Navigated to **S3 → Properties**
- Enabled **Static website hosting**
- Set **index.html** as the index document
- Saved the configuration
- Noted the S3 website endpoint: `http://nautilus-web-8714.s3-website-us-east-1.amazonaws.com`

**Static Website Hosting, Endpoint Details**

![Static Website Hosting Configs](/Day-39-Hosting-a-Static-Website-on-AWS-S3/Static-website.png)


### Upload Website Content
- Uploaded the `index.html` file from the aws-client host: `aws s3 cp /root/index.html s3://nautilus-web-8714/`

### Public Access Configuration
- Initially received 403 Forbidden when accessing the website endpoint
- Navigated to Permissions → Bucket policy
- Added a bucket policy to allow public read access (s3:GetObject)
- Saved the policy

---

## Learnings / Key Takeaways
- S3 can be used to host static websites without any servers
- Static website hosting must be explicitly enabled at the bucket level
- S3 supports hosting multi-page static websites by serving multiple HTML files and directory structures, with `index.html` acting as the default entry point for each path
- Disabling Block Public Access alone is not sufficient for public access
- Bucket policies are required to allow public read (`s3:GetObject`) access
- S3 website endpoints are different from standard S3 object URLs
- A 403 Forbidden error usually indicates missing or incorrect bucket permissions