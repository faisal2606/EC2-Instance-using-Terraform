# Deploying 2 Ubuntu EC2 Instances Using Terraform

## Project Overview

This project provisions **2 Ubuntu EC2 instances** on AWS using **Terraform**.

## Prerequisites

- Install Terraform on your local PC.
- Install and configure the AWS CLI.
- Configure AWS credentials (`aws configure`) or log in using AWS IAM Identity Center (AWS Login).
- Ensure you have an existing EC2 key pair in your selected AWS region.

## Project Structure

Create the following files in your project folder:

- `main.tf`
- `variables.tf`
- `outputs.tf`

Refer to these files for the infrastructure configuration.

## Deployment Steps

1. Navigate to the project directory.

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Validate the Terraform configuration:

   ```bash
   terraform validate
   ```

4. Review the execution plan:

   ```bash
   terraform plan
   ```

5. Apply the configuration:

   ```bash
   terraform apply
   ```

6. Type **yes** when prompted.

7. Log in to the AWS Console (if not already logged in).

8. Verify that **2 Ubuntu EC2 instances** have been created successfully.

## Verify the Deployment

Run:

```bash
terraform output
```

Example output:

```text
public_ips = [
  "13.xx.xx.xx",
  "16.xx.xx.xx"
]
```

You can also verify the instances from the AWS Console:

**EC2 → Instances**

## Connect to the EC2 Instances

```bash
ssh -i <your-key>.pem ubuntu@<public-ip>
```

Example:

```bash
ssh -i abbas-key.pem ubuntu@13.60.xx.xx
```

## Clean Up

To avoid AWS charges, destroy the infrastructure when you're finished:

```bash
terraform destroy
```

## Technologies Used

- Terraform
- AWS EC2
- Ubuntu Server
- AWS CLI
