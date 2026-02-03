# Day 42 – Building and Managing NoSQL Databases with AWS DynamoDB

## Task / Requirement
The Nautilus DevOps team is building a simple To-Do application using Amazon DynamoDB
to store and manage tasks efficiently.

The task is to create a DynamoDB table, insert task records, and verify that the data
is stored correctly with the expected attributes and values.

**Requirement details:**
- AWS Service: DynamoDB
- Table Name: nautilus-tasks
- Primary Key: taskId (String)
- Attributes:
  - description
  - status
- Goal: Store and verify task data using DynamoDB

---

## Steps Performed

### DynamoDB Table Creation
- Created a DynamoDB table named **nautilus-tasks**
- Defined the primary key as:
  - Partition key: `taskId` (String)
- Used default capacity and configuration settings
- Verified that the table status was **Active**

---

### Insert Task Items
- Inserted the following task records into the table:

**Task 1**
- taskId: `1`
- description: `Learn DynamoDB`
- status: `completed`

**Task 2**
- taskId: `2`
- description: `Build To-Do App`
- status: `in-progress`

- Confirmed that both items were successfully added to the table

---

### Verification
- Retrieved the inserted items from the DynamoDB table
- Verified task details and statuses:
  - Task 1 status: **completed**
  - Task 2 status: **in-progress**
- Confirmed that the data matched the expected values  
  *(refer verification screenshot)*

![DynamoDB table verification](/Day-42-Building-and-Managing-NoSQL-Databases-with-AWS-DynamoDB/dynamodb-verification.png)

---

## Learnings / Key Takeaways
- DynamoDB is a fully managed NoSQL key-value and document database
- Each DynamoDB table must have a primary key for uniquely identifying items
- DynamoDB provides single-digit millisecond performance at scale
- Schema design in DynamoDB focuses on access patterns rather than fixed schemas
- DynamoDB is well-suited for serverless and highly scalable applications
