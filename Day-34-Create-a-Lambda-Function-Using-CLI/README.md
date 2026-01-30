# Day 34 – Create a Lambda Function Using CLI

## Task / Requirement
The Nautilus DevOps team continues exploring serverless architecture by creating a Lambda function using the AWS CLI.
This task demonstrates how Lambda functions can be created, deployed, and invoked programmatically without using the AWS Console.

The function should return a custom greeting message with a successful status code.

**Requirement details:**
- AWS Service: AWS Lambda
- Function Name: nautilus-lambda-cli
- Runtime: Python
- IAM Role: lambda_execution_role
- Response Body: Welcome to KKE AWS Labs!
- Status Code: 200
- Deployment Method: AWS CLI
- Goal: Create and invoke a Lambda function using CLI

---

## Steps Performed
- Logged into the **aws-client** host
- Created a Python script named **lambda_function.py**
- Added a Lambda handler function to return a greeting message
- Zipped the Python script into **function.zip**
- Verified AWS CLI identity using STS
- Created the Lambda function using AWS CLI
- Verified the function creation
- Invoked the Lambda function using AWS CLI
- Checked the response output to confirm successful execution

---

## Lambda Function Code
```python
def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "body": "Welcome to KKE AWS Labs!"
    }
```

## Commands Used

```bash
# Create Python script
vi lambda_function.py

# Zip the Lambda function
zip function.zip lambda_function.py

# Verify AWS identity
aws sts get-caller-identity

# Create Lambda function using CLI
aws lambda create-function \
  --function-name nautilus-lambda-cli \
  --runtime python3.9 \
  --role arn:aws:iam::703570702606:role/lambda_execution_role \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip

# Verify Lambda function
aws lambda get-function \
  --function-name nautilus-lambda-cli

# Invoke Lambda function
aws lambda invoke \
  --function-name nautilus-lambda-cli \
  response.json

# View response
cat response.json
```

---

## Learnings / Key Takeaways
- AWS Lambda functions can be fully managed using the AWS CLI
- Lambda code must be packaged as a zip file for CLI-based deployment
- The handler value follows the format filename.function_name
- IAM execution roles define what resources a Lambda function can access
- CLI-based workflows enable automation and CI/CD integration for serverless deployments

