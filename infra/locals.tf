locals {
  global_name = "${var.resource_type}-${var.project}-${var.environment}-${var.instance}-${var.region}"
  restricted_name = "${var.resource_type}${var.project}${var.environment}${var.instance}${var.region}"
  name = var.resource_type == "kv" ? local.restricted_name : local.global_name
}