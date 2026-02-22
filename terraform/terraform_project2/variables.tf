variable "instance_type" {
  default = "t3.micro"
  type = string
}

variable "ami" {
  description = "ami number"
  default = "ami-080ecf65f4d838a6e"
  type = string
}

variable "project2_sg" {
  description = "project security group"
  type = list(string)
}

variable "public_subnet_id" {
  description = "The ID of the public subnet to launch the EC2 instance in"
  type = string
}

variable "key_pair_name" {
  description = "key-pair name for ec2 instance"
  type = string
}