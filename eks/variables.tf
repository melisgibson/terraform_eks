# --- eks/variables.tf ---
variable "desired_size" {
  type = number
}
variable "max_size" {
  type = number
}
variable "min_size" {
  type = number
}
variable "key_pair" {}
variable "vpc_id" {}
variable "public_subnets" {}
variable "instance_types" {}