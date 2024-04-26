variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"  # Change to your desired region
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  default     = "1.20"
}

variable "subnets" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = [] # Fill in your subnet IDs
}

variable "vpc_id" {
  description = "VPC ID"
  default     = ""  # Fill in your VPC ID
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of EC2 instances"
  default     = 4
}

variable "min_capacity" {
  description = "Minimum number of EC2 instances"
  default     = 1
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  default     = ""  # Fill in your key pair name
}

variable "volume_size" {
  description = "Size of the EBS volume in GB"
  default     = 20
}

variable "volume_type" {
  description = "Type of the EBS volume"
  default     = "gp2"
}
