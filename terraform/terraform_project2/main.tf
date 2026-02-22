resource "aws_instance" "project2" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.project2_sg
  key_name = var.key_pair_name
  user_data = file("user_data.yaml")
  subnet_id = var.public_subnet_id
  associate_public_ip_address = true
  tags = {
    Name = "Wordpress-EC2-2"
  }
  
}