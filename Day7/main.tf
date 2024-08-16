provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://18.206.145.22:820/"
  max_retries = 5
  skip_child_token = true
  auth_login {
    path = "v1/auth/approle/login"

    parameters = {
        role_id = "1ddb87a9-1e49-045f-572e-ce8de679f01f"
        secret_id = "879d23a8-f711-b7c0-e206-2a50ad127ba5"
    }
  }
}
data "vault_kv_secret_v2" "exe" {
  mount = "s1/"
  name = "ssss123"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.exe.data["username"]
  }
}