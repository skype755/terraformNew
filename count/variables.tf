variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "RHEL9 AMI ID"
}

# variable "environment" {
#   default = "prod"
# }

variable "instances" {
  default = ["mysql", "backend", "frontend"]
}


variable "instance_type" {
  default = "t3.micro"
}

# variable "ec2_tags" {
#   type = map(any)
#   default = {
#     project     = "expense"
#     component   = "backend"
#     Environment = "dev"
#     Name        = "expense-backend-dev"
#   }
#}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "expense-backend-dev"
  }
}

variable "zone_id" {
  default = "Z06755682HLUVK97WWDXL"
}

variable "domain_name" {
  default = "dev-ops.chat"
}