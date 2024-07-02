variable "region" {
  description = "AWS region where the S3 bucket will be created."
  type        = string
  default     = "ap-south-1" # Replace with your preferred AWS region
}

variable "vpc_cidr" {
  description = "VpC cider ranges"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Subnets CIDR"
  type        = list(string)
}

variable "ec2_name" {
  description = "jenins server name"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}