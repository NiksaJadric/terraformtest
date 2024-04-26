provider "aws" {
  region = var.aws_region
}

module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = var.subnets
  vpc_id          = var.vpc_id
  node_groups = [
    {
      instance_type = var.instance_type
      desired_capacity = var.desired_capacity
      max_capacity     = var.max_capacity
      min_capacity     = var.min_capacity
      key_name         = var.key_name
      volume_size      = var.volume_size
      volume_type      = var.volume_type
      tags = {
        Terraform   = "true"
        Environment = "dev"
      }
    }
  ]
}

output "kubeconfig" {
  value = module.eks_cluster.kubeconfig
}
