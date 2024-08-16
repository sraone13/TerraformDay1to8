import {
  id = "i-0a571f038468f5000"

  to = aws_instance.example
}

1.terraform init
2.terraform plan -generate-config-out="generated_resources.tf"
3.It will create the the resousrce file and copy that paste in main.tf and delete the resource file
4.Now if you do terraform apply it add the new resource but, it have already existed with same add
  it will cause the problem

5.terraform import aws_instance.example <instance_id>.
6.state file will create
7.terraform plan and terraform apply( It will show the no chnages)

