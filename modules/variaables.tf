variable "project" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}
variable "aws_region" {
  default = "us-east-1"
}
variable "is_peering_required" {
  type = bool
  default = false

}