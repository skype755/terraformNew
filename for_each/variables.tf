variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
  default = "Z06755682HLUVK97WWDXL"
}

variable "domain_name" {
  default = "dev-ops.chat"
}