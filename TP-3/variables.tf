variable "instancetype" {
  description = "Type de l'instance EC2"
  type        = string
  default     = "t2.nano"
}

variable "ec2_name" {
  description = "Nom de l'instance EC2"
  type        = string
  default     = "ec2-rodrigue"
}
