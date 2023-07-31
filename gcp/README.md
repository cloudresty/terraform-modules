# GCP Terraform Modules

[Home](../README.md) / [GCP](./README.md)

&nbsp;

This repository contains a set of Terraform modules for provisioning resources on Google Cloud Platform (GCP).

&nbsp;

## Modules

* [gke-standard-cluster](./gke-standard-cluster/README.md) - A module for provisioning a standard GKE cluster.

&nbsp;

## Usage

Each module has its own README file with usage examples. For example, to use the `gke-standard-cluster` module in your Terraform code, you can use the following snippet:

```hcl
module "my_gke_standard_cluster" {

  source = "github.com/cloudresty/terraform-modules//gcp/gke-standard-cluster?ref=v1.0.0"

  ...

}
```

&nbsp;

Once you have your Terraform code ready, you can run the following commands to provision the resources:

```shell
terraform init
terraform plan
terraform apply
```

&nbsp;

---

[Cloudresty](https://cloudresty.com/)
