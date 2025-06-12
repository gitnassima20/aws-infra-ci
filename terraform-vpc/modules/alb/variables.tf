variable "sg_id" {
  type = string
  description = "Security Group ID for ALB"
}

variable "subnets" {
  type = list(string)
  description = "Subnets for ALB"
}

variable "vpc_id" {
  type = string
  description = "VPC ID for ALB"
}

variable "instances" {
    type        = list(string)
    description = "EC2 instances IDs for Tagrget Group Attachment"
}