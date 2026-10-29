resource "aws_instance" "myec2" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = var.instancetype
  key_name               = "devops-rodrigue"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = var.ec2_name
  }
}
