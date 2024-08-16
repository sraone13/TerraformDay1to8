provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = "ami-053b0d53c279acc90"
instance_type = "t3.micro"
 subnet_id = "subnet-04886da425ade2b8b"
}