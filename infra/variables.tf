# https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming
variable "region" {
  type = string
  validation {
    condition = contains(["westus", "eastus2", "westeu", "usva", "ustx"], var.region)
    error_message = "value should be in range: westus, eastus2, westeu, usva, ustx"
  }
}

variable "instance" {
  type = string
  default = "001"
  description = "id correlative of resource"
}

variable "environment" {
  type = string
  validation {
    condition = contains(["prod", "dev", "qa", "stage", "test"], var.environment)
    error_message = "value should be in range: prod, dev, qa, stage, test"
  }
}

variable "project" {
  type = string
  description = "project name abbreviation"
}

variable "resource_type" {
  type = string
  description = "resource name abbreviation"
}