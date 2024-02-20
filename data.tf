data "aws_caller_identity" "current" {
}

locals {
  account_id = data.aws_caller_identity.current.account_id

  tags = {
    "${var.environment_tag_key}" : "${var.environment}",
    "${var.owner_tag_key}" : "${var.owner_tag_value}",
    "${var.costcenter_tag_key}" : "${var.costcenter_tag_value}",
    "${var.application_tag_key}" : "${var.application_tag_value}",
    "${var.platform_tag_key}" : "${var.platform_tag_value}",
    "${var.organization_tag_key}" : "${var.organization_tag_value}",
    "${var.department_tag_key}" : "${var.department_tag_value}"
  }
}
