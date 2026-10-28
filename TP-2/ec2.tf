terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "terraform-lab"
}

resource "aws_instance" "serveur_tp2" {
  ami           = "ami-0fc53b217ec1ad816"
  instance_type = "t3.micro"

  tags = {
    name = "ec2-dassie"
  }
}

resource "aws_instance" "server2_perso" {
  ami           = "ami-0fc53b217ec1ad816"
  instance_type = "t3.micro"
}
