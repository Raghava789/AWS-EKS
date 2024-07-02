terraform {
  backend "s3" {
    bucket = "my-backend-s3-bucket-30"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}