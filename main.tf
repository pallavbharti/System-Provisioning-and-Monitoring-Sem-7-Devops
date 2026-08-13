terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}
resource "aws_instance" "lab_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name       = var.vm_name
    Owner      = "SPM-Lab"
    Experiment = "01"
    ManagedBy  = "Terraform"
  }
}