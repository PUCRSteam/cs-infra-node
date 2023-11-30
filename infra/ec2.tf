resource "aws_instance" "csg0-infra-node" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"

  tags = {
    "Name"       = "codedeploy-example-01"
    "codedeploy" = "producao"
  }
  tags_all = {
    "Name"       = "codedeploy-example-01"
    "codedeploy" = "producao"
  }
  tenancy = "default"
  # vpc_security_group_ids               = [
  #     "sg-0892441f0004a896a",
  # ]
}
