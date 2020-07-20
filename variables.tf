variable "region" {
  description = "The AWS region."
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
  default     = "phil4"
}

variable "ami" {
  type        = map(string)
  description = "A map of AMIs."
  default     = {}
}

variable "instance_type" {
  description = "The instance type."
  default     = "t2.micro"
}

variable "owner_tag" {
  default = ["team1", "team2"]
}

variable "instance_ips" {
  description = "The IPs to use for our instances"
  default     = ["10.0.1.20", "10.0.1.21"]
}


variable "environment" {
  default = "development"
}

variable "key_path" {
  default = "~/.ssh/phil4.pem"
}
