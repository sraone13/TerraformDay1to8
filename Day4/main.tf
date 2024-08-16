provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sravan" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  subnet_id = "subnet-04886da425ade2b8b"
}

resource "aws_s3_bucket" "sravan123-s3-bucket" {
  bucket = "sravan123-s3-bucket"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
