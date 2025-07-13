variable "cidr_vpc" {
  description = "VPCのCIDRブロック"
  type        = string
}

variable "cidr_public_subnet" {
  description = "パブリックサブネットのCIDRブロック"
  type        = string

}

variable "availability_zone" {
  description = "AZ"
  type        = string
}
