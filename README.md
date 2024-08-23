## Naming convention
This repository follows azure [naming convention](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming). Recives parameters, validate that and return the resource name: <br>
Given:
- region = "westus"
- instance = "001"
- environment = "prod"
- project = "workload"
- resource_type = "rg"
Returns:
- rg-workload-prod-001-westus
And the module can validate fields like environment and region
## How to
### Install dependencies
After clone repository, run next docker command. We use terratest image from [wyracocha](https://hub.docker.com/repository/docker/wyracocha/terratest/general)
```
docker run --rm -v "$PWD:/app" -w /app/test devildeveloper/terratest go mod init myorg/mymodule
```
```
docker run --rm -v "$PWD:/app" -w /app/test devildeveloper/terratest go mod tidy
```
### Run test
```
docker run --rm -v "$PWD:/app" -w /app/test devildeveloper/terratest go test -v
```