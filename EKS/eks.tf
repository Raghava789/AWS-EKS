module "eks" {
  source                         = "terraform-aws-modules/eks/aws"
  version                        = "18.27.0"
  cluster_name                   = "my-eks-cluster"
  cluster_version                = "1.29"
  cluster_endpoint_public_access = true
  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.private_subnets

  eks_managed_node_groups = {
    nodes = {
      min_size       = 1
      max_size       = 2
      desired_size   = 1
      instance_types = ["t3.medium"]
    }
  }

  tags = {
    Name        = "my-eks-cluster"
    Environment = "dev"
    Terraform   = "true"
  }
}
