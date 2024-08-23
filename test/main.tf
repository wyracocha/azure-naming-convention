module "global" {
  source = "../infra"

  region = "westus"
  instance = "001"
  environment = "prod"
  project = "workload"
  resource_type = "rg"
}

module "kv" {
  source = "../infra"

  region = "westus"
  instance = "001"
  environment = "prod"
  project = "workload"
  resource_type = "kv"
}