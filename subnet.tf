# Define the subnets
resource "aws_subnet" "sub-ap-south-1a" {
  vpc_id = aws_vpc.testvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "sub-ap-south-1a"
  }
}
