resource "aws_instance" "csg0-infra-node" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  subnet_id     = element(module.vpc.private_subnets, 0)
}
