variable "region" {
  description = "AWS region in which the instance is created"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI identifier of Ubuntu 22.04 LTS in the chosen region"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "EC2 instance size; must remain within the free tier"
  type        = string

  default = "t3.micro"

  validation {
    condition     = contains(["t3.micro", "t3.micro"], var.instance_type)
    error_message = "Only free-tier instance types are permitted in this lab."
  }
}

variable "vm_name" {
  description = "Value of the Name tag applied to the instance"
  type        = string
  default     = "lab-vm-01"
}
