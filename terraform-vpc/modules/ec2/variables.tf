variable "sg_id" {
  type        = string
  description = "Security Group ID for EC2"
}

variable "subnets" {
  type        = list(string)
  description = "Subnets for EC2"
}

variable "ec2_names" {
    type        = list(string)
    description = "EC2 names"
    default     = ["MyWebServer1", "MyWebServer2"]
}
  