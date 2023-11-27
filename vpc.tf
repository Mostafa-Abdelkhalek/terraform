resource "aws_vpc" "Deploy" {
  cidr_block         = var.cidr_block
  enable_dns_hostnames =  "true"

}