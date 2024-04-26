# Prompt for AWS region
variable "aws_region" {
  description = "Enter the AWS region where you want to deploy the resources."
  default     = "ap-south-1" # Default to Mumbai region
}

# Prompt for AMI ID
variable "ami_id" {
  description = "Enter the ID of the Amazon Machine Image (AMI) you want to use."
  default     = "ami-0c55b159cbfafe1f0" # Default to a common Ubuntu AMI
}

# Prompt for instance type
variable "instance_type" {
  description = "Enter the type of EC2 instance you want to launch (e.g., t2.micro)."
  default     = "t2.micro"
}

# Prompt for subnet ID
variable "subnet_id" {
  description = "Enter the ID of the subnet where you want to launch the EC2 instance."
}

# Prompt for key pair name
variable "key_pair_name" {
  description = "Enter the name of the key pair for SSH access."
}

# Prompt for IAM instance profile
variable "iam_instance_profile" {
  description = "Enter the name of the IAM instance profile for the EC2 instance."
}

# Prompt for security group IDs
variable "security_group_ids" {
  description = "Enter a list of security group IDs for the EC2 instance."
  type        = list(string)
}

# Configure AWS provider
provider "aws" {
  region = var.aws_region
}

# Define EC2 instance resource
resource "aws_instance" "example" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_pair_name
  associate_public_ip    = true
  iam_instance_profile   = var.iam_instance_profile
  vpc_security_group_ids = var.security_group_ids

  # Define tags for better organization
  tags = {
    Name        = "example-instance"
    Environment = "production"
  }
}
