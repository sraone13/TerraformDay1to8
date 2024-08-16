terraform {
  backend "s3" {
    bucket = "sravan123-s3-bucket"
    key = "sravan/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    #dynamodb_table = "terraform-lock" 
  }
}