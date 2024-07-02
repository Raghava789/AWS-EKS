module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = var.ec2_name

  instance_type               = var.instance_type
  key_name                    = "jenkins-keypair"
  monitoring                  = true
  vpc_security_group_ids      = [module.sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  user_data                   = file("jenkins-install.sh")
  availability_zone           = data.aws_availability_zones.azs.names[0]

  tags = {
    Name        = var.ec2_name
    Terraform   = "true"
    Environment = "dev"
  }
}