### S3 AWS Bucket static

Description: This example demonstrates how to set up an S3 Bucket for static files instance using CloudFormation.

#### Files

- `template.yaml`: The CloudFormation template file.

#### Usage

1. Navigate to the example directory:

   ```bash
   cd cloudformation/s3-aws-bucket-static
   ```

2. Create the stack:

   ```bash
   aws cloudformation create-stack --stack-name ec2-aws-stack --template-body file://template.yaml
   ```

3. Monitor the stack creation:

   ```bash
   aws cloudformation describe-stacks --stack-name ec2-aws-stack
   ```

4. To delete the stack:

   ```bash
   aws cloudformation delete-stack --stack-name ec2-aws-stack
   ```

[See other examples](../README.md)
