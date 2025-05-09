# # ----------------------- ROUTE TABLES -----------------------
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Service     = "Route Table"
    Area        = var.area
    Environment = var.environment
    Product     = var.product
    Data        = var.data
  }
}

resource "aws_route" "default_to_tg" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  transit_gateway_id     = var.transit_gateway_id
}

resource "aws_route" "default_to_tg_central_vpc" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "20.0.0.0/16"
  transit_gateway_id     = var.transit_gateway_id
}