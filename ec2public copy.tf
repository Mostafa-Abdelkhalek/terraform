resource "aws_instance" "bastion" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  
}
resource "aws_instance" "server" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.all_ssh.id]
}