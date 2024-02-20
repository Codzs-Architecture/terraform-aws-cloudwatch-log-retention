variable "name_tag_key" {
  type        = string
  description = "The tag key for the 'Name' tag."
  default     = "Name"
}

variable "environment_tag_key" {
  type        = string
  description = "The tag key for the 'Environment' tag."
  default     = "Environment"
}

variable "owner_tag_key" {
  type        = string
  description = "The tag key for the 'Owner' tag."
  default     = "Owner"
}

variable "owner_tag_value" {
  type        = string
  description = "Owner tag value for the resource."
  default     = "codzs"
}

variable "costcenter_tag_key" {
  type        = string
  description = "The tag key for the 'CostCenter' tag."
  default     = "CostCenter"
}

variable "costcenter_tag_value" {
  type        = string
  description = "Cost center tag value for the resource."
  default     = "technology"
}

variable "application_tag_key" {
  type        = string
  description = "The tag key for the 'Application' tag."
  default     = "Application"
}

variable "application_tag_value" {
  type        = string
  description = "Application tag value for the resource."
  default     = "shared"
}

variable "platform_tag_key" {
  type        = string
  description = "The tag key for the 'Platform' tag."
  default     = "Platform"
}

variable "platform_tag_value" {
  type        = string
  description = "Platform tag value for the resource."
  default     = "shared"
}

variable "organization_tag_key" {
  type        = string
  description = "The tag key for the 'Organization' tag."
  default     = "Organization"
}

variable "organization_tag_value" {
  type        = string
  description = "Organization tag value for the resource."
  default     = "Codzs"
}

variable "department_tag_key" {
  type        = string
  description = "The tag key for the 'Department' tag."
  default     = "Department"
}

variable "department_tag_value" {
  type        = string
  description = "Department tag value for the resource."
  default     = "platform"
}