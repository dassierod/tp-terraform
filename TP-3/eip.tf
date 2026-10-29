resource "aws_eip" "my_eip" {
  domain = "vpc"

  tags = {
    Name = "tp3-elastic-ip"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.my_eip.id
}
