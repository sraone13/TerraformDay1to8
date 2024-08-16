provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "Sravan_server" {
    ami           = "ami-04a81a99f5ec58529"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-04886da425ade2b8b"
}