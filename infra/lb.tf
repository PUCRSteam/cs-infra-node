resource "aws_lb" "cs-infra-node-lb" {
  name               = "cs-infra-node"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.csg0-infra-node.id]

  enable_deletion_protection = false

  tags = {
    Environment = "terraform"
  }
}
