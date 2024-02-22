module "tags_client" {
  source  = "Codzs-Architecture/tags-client/aws"
  version = "0.0.3"
}

data "aws_ssm_parameter" "application_name" {
  name = "/aft_extension/org/application_name"
}

locals {
  application_name = data.aws_ssm_parameter.application_name.value

  tags = {
    "${module.tags_client.name_tag_key}" : "cloudwatch-log-retention",
    "${module.tags_client.environment_tag_key}" : "${var.environment}",
    "${module.tags_client.owner_tag_key}" : "${local.application_name}",
    "${module.tags_client.costcenter_tag_key}" : "technology",
    "${module.tags_client.application_tag_key}" : "shared",
    "${module.tags_client.platform_tag_key}" : "shared",
    "${module.tags_client.organization_tag_key}" : "${local.application_name}",
    "${module.tags_client.department_tag_key}" : "platform"
  }
}