resource "aws_route_table" "public" {
  vpc_id = aws_vpc.Deploy.id

}
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id

}
resource "aws_route_table_association" "public1" {
  route_table_id = aws_route_table.public.id
  subnet_id      = aws_subnet.public.id
}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.Deploy.id
}
resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.ngw.id
}
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id

}