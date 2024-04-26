# Terraform AWS EC2 Instance Creation
<img src="https://hashicorp.github.io/field-workshops-terraform/slides/aws/terraform-oss/images/tf_aws.png" alt="Terraform AWS" width="400">


This Terraform configuration automates the deployment of an EC2 instance in the AWS cloud environment. It offers flexibility in customizing various parameters to suit your specific requirements.

## Prerequisites

Before you begin, ensure you have the following prerequisites installed and configured:

- [Terraform](https://www.terraform.io/downloads.html)
- AWS CLI configured with appropriate permissions

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/AtulKirti/Terraform.git
cd Terraform/EC2-Instance-Creation
```

### Initialize Terraform

Initialize Terraform to download the necessary provider plugins and initialize the working directory.

```bash
terraform init
```

### Configure Variables

Create a `terraform.tfvars` file and specify the values for the required variables. Below is an example of the variables you can configure:

```hcl
aws_region             = "ap-south-1"
ami_id                 = "ami-0c55b159cbfafe1f0"
instance_type          = "t2.micro"
subnet_id              = "your_subnet_id"
key_pair_name          = "your_key_pair_name"
iam_instance_profile   = "your_iam_instance_profile"
security_group_ids     = ["sg-12345678", "sg-87654321"]
```

Replace the placeholder values with your actual AWS resources' IDs and names.

### Review and Apply

Before applying the changes, review the execution plan to ensure it matches your expectations.

```bash
terraform plan
```

Apply the changes to create the EC2 instance.

```bash
terraform apply
```

## Customization

You can customize the EC2 instance by modifying the variables in the `terraform.tfvars` file. Here are the variables you can adjust:

- `aws_region`: AWS region where the instance will be deployed.
- `ami_id`: ID of the Amazon Machine Image (AMI) to use for the instance.
- `instance_type`: Type of EC2 instance to launch.
- `subnet_id`: ID of the subnet where the instance will be launched.
- `key_pair_name`: Name of the key pair for SSH access to the instance.
- `iam_instance_profile`: Name of the IAM instance profile for the instance.
- `security_group_ids`: List of security group IDs for the instance.

## Cleanup

To delete the resources created by Terraform, run:

```bash
terraform destroy
```

## License

This project is licensed under the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0). See the [LICENSE](LICENSE) file for details.
