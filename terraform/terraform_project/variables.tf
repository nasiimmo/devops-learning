variable "instance_type" {
  description = "EC2 instance type"
  type = string
}

variable "ami" {
  description = "ami number"
  type = string
  default = "ami-080ecf65f4d838a6e"
}

variable "project_sg" {
  description = "project security group"
  type = list(string)
}


variable "public_subnet_id" {
  description = "The ID of the public subnet to launch the EC2 instance in"
  type = string
}

# variable "user_data" {
#   description = "user data script"
#   type = string
# }

variable "key_pair_name" {
  description = "key-pair name for ec2 instance"
  type = string
}


