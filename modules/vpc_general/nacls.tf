resource "aws_network_acl" "nacls" {
  vpc_id = aws_vpc.vpc.id

  # Inbound Rules
  ingress {
    rule_no    = 100
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # Outbound Rules
  egress {
    rule_no    = 100
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Service     = "NACLs"
    Area        = var.area
    Environment = var.environment
    Product     = var.product
    Data        = var.data
  }
}