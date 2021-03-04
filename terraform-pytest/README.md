# Terraform Pytest Docker Image

This is Python3.9 based image built for testing the Terraform using python's pytest module in CI.

Currently hosted in docker hub & can be pulled by executing below command:

```
docker pull abhisheksr01/terraform-pytest:latest
```

## Tooling within Image

| Tool          | Version Installed       |
|:--------------|:------------------------|
| aws-cli       | v2                      |
| helm          | 3                       |
| kubectl       | 1.18.9                  |
| pip           | 3                       |
| poetry        |                         |