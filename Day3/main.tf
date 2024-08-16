provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./module.ec2_instance"
  ami_id_value = "ami-04a81a99f5ec58529"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-04886da425ade2b8b"
}