### VPC AWS with private and public subnet

Description: This example demonstrates how to set up a VPC with private and public subnets using CloudFormation.

#### Files

- `template.yaml`: The CloudFormation template file.

#### Usage

1. Navigate to the example directory:

   ```bash
   cd cloudformation/vpc-aws
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
