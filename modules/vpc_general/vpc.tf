
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Service     = "VPC"
    Area        = var.area
    Environment = var.environment
    Product     = var.product
    Data        = var.data
  }
}