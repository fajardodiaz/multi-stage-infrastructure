variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "area" {
  type        = string
  description = "Iterum Area"
}

variable "environment" {
  type        = string
  description = "Iterum Area"
}

variable "product" {
  type        = string
  description = "Product"
}

variable "data" {
  type        = string
  description = "Data (PHI, PCI, General Business Data, HIPAA)"
  default     = "General"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDRs"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability Zones"
}
