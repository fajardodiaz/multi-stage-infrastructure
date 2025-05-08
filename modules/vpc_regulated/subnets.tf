resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.vpc.id
  count             = length(var.private_subnet_cidrs)
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Service     = "Private Subnet"
    Area        = var.area
    Environment = var.environment
    Product     = var.product
    Data        = var.data
  }
}