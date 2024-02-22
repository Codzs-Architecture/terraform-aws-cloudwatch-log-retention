data "aws_caller_identity" "current" {
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

data "aws_vpc" "this" {
  tags = {
    Name = "vpc-${var.environment}"
  }
}

data "aws_subnets" "this" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }
}

data "aws_security_groups" "this" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }
}