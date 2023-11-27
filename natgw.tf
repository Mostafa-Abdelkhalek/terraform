resource "aws_eip" "eib" {
}
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eib.id
  subnet_id     = aws_subnet.public.id
}