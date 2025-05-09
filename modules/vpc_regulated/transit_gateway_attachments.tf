resource "aws_ec2_transit_gateway_vpc_attachment" "transit_gateway_attachment" {
  appliance_mode_support = "enable"
  vpc_id                 = aws_vpc.vpc.id
  subnet_ids             = aws_subnet.private_subnet[*].id
  transit_gateway_id     = var.transit_gateway_id

  tags = {
    Service     = "Transit Gateway Attachment"
    Area        = var.area
    Environment = var.environment
    Product     = var.product
    Data        = var.data
  }
}