terraform {
required_providers {
aws = {
source  = "hashicorp/aws"
version = "~> 5.29.0"
}

}
required_version = ">= 1.2.0"
}

provider "aws" {
region = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
ami                   = "ami-013218fccb68a90d4"
instance_type         = "t2.micro"
tags = {

Name = "ExampleAppServerInstance"
}
}
