variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Range"
}

variable "subnet_cidr" {
  type        = list(string)
  description = "Subnet CIDRS" 
}

variable "subnets_names" {
  type        = list(string)
  description = "Subnet names" 
  default     = ["PubliSubnet1", "PubliSubnet2"]
}
  
