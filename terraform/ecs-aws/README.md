### EC2 AWS

Description: This example demonstrates how to set up an ECS instance using Terraform.

#### Files

- `main.tf`: The main Terraform configuration file.
- `variables.tf`: Defines the input variables.
- `outputs.tf`: Defines the output values.

#### Usage

1. Navigate to the example directory:

   ```bash
   cd terraform/ecs-aws
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Review the execution plan:

   ```bash
   terraform plan
   ```

4. Apply the changes:

   ```bash
   terraform apply
   ```

5. When done, destroy the created infrastructure:

   ```bash
   terraform destroy
   ```

[See other examples](../README.md)
