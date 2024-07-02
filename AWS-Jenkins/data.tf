data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20231207"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["amazon"] # Amazon
}

data "aws_availability_zones" "azs" {

}
