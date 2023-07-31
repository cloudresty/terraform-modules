# Terraform Modules

[Home](./README.md) /

&nbsp;

This repository contains a collection of Terraform modules for various cloud providers. Each module is a standalone resource that can be used by itself, or combined with other modules to create a more complex infrastructure. The modules are designed to be flexible, so that they can be used in a variety of scenarios. They are also designed to be reusable, so that they can be used in multiple projects.

&nbsp;

## Cloud Providers

Currently, the following cloud providers are supported:

* [Amazon Web Services (AWS)](./aws/README.md)
* [Google Cloud Platform (GCP)](./gcp/README.md)
* [Hetnzer Cloud (HCloud)](./hcloud/README.md)

&nbsp;

## Usage

Each module has its own documentation, which includes usage examples and instructions on how to integrate it with other modules. Please refer to the documentation for each module for more information.

&nbsp;

Below is an example of how to use the GCP GKE Standard Cluster module in your Terraform code:

```hcl
module "my_gke_standard_cluster" {

  source = "github.com/cloudresty/terraform-modules//gcp/gke-standard-cluster?ref=v1.0.0"

  ...

}
```

&nbsp;

Please note that the above example uses version `v1.0.0` of the module. You can find the latest version of the module in the [tags](https://github.com/cloudresty/terraform-modules/tags) section of the repository and replace `v1.0.0` with the latest version.

&nbsp;

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details. If you have any questions, please open an issue. We're happy to help and we appreciate your feedback!

&nbsp;

## License

This project is licensed under the terms of the [MIT License](LICENSE).

&nbsp;

---

[Cloudresty](https://cloudresty.com/)
