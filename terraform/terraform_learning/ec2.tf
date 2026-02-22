resource "aws_instance" "this" {
  ami                     = "ami-096f46d460613bed4"
  instance_type           = "t3.micro"
}