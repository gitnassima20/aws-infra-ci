variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Range"
}

variable "subnet_cidr" {
  type        = list(string)
  description = "Subnet CIDRS" 
}