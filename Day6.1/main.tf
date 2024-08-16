provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}

module "ec2_instance" {
  source = "./modules/ec_instance"
  ami = var.ami
  subnet_id = "subnet-04886da425ade2b8b"
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}