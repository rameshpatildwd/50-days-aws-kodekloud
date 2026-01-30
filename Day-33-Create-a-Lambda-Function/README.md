# Day 33 – Create a Lambda Function

## Task / Requirement
The Nautilus DevOps team is adopting serverless architecture and wants to demonstrate the basic working of AWS Lambda.
A simple Lambda function must be created to return a custom greeting message, showcasing quick deployment and execution without managing servers.

The task is to create a Lambda function with a Python runtime and validate its execution.

**Requirement details:**
- AWS Service: AWS Lambda
- Function Name: devops-lambda
- Runtime: Python
- IAM Role: lambda_execution_role
- Response Body: Welcome to KKE AWS Labs!
- Status Code: 200
- Goal: Create and successfully execute a Lambda function

---

## Steps Performed
- Logged into the AWS Management Console
- Navigated to **Lambda → Functions**
- Clicked on **Create function**
- Selected **Author from scratch**
- Provided the function name **devops-lambda**
- Selected **Python** as the runtime
- Attached the IAM role **lambda_execution_role**
- Created the Lambda function
- Added the function code to return a greeting message
- Used the **Test** feature to invoke the function
- Verified the function executed successfully with the expected response

---

## Lambda Function Code
```python
def lambda_handler(event, context):
    print("Welcome to KKE AWS Labs!")
    return {
        "statusCode": 200,
        "body": "Welcome to KKE AWS Labs!"
    }
```

---

## Verification

### Output of the Lambda Function
![Test](/Day-33-Create-a-Lambda-Function/output.png)

---

## Learnings / Key Takeaways
- AWS Lambda allows running code without provisioning or managing servers
- Lambda functions are event-driven and execute only when triggered
- IAM roles define the permissions a Lambda function has to access AWS resources
- The function response structure commonly includes a status code and body
- Lambda enables rapid deployment and scales automatically based on incoming requests