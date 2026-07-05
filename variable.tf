
variable "region" {
  default = "eu-north-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "abbas-key"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
  default     = "ami-05bfa4a7765f38076"
}