module "infra" {
  source = "../infra"

  region = "westus"
  instance = "001"
  environment = "prod"
  project = "workload"
  resource_type = "rg"
}