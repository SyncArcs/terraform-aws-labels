# Terraform-aws-labels
#  Terraform AWS Cloud Labels Module

## Overview

This Terraform module, named "labels," is designed to help you manage and apply labels (tags) to AWS resources consistently within your infrastructure. It is particularly useful for adding labels to resources in a standardized way, making it easier to manage, organize, and track resources in your AWS environment.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#examples)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This Terraform module creates an AWS labels (labels) along with additional configuration options.

## Usage

To use this module in your Terraform configurations, you can include it as follows:

```hcl
module "labels" {
  source      = "git::https://github.com/SyncArcs/terraform-aws-labels.git?ref=v1.0.0"
  name        = "app"
  environment = "test"
  label_order = ["name", "environment"]
  attributes  = ["private"]
  extra_tags  = {
    Application = "Demo"
  }
}
```

## Examples
For detailed examples on how to use this module, please refer to the [examples](https://github.com/SyncArcs/terraform-aws-labels/tree/master/example) directory within this repository.

## License
This Terraform module is available under the **MIT** License. For more details, please see the [LICENSE](https://github.com/SyncArcs/terraform-aws-labels/blob/master/LICENSE) file.

## Author
Your Name
Replace **MIT** and **SyncArcs** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.32.1 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`). | `list(string)` | `[]` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `organization`, `name`, `environment` and `attributes`. | `string` | `"-"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(string)` | `{}` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'SyncArcs'. | `string` | `"SyncArcs"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | Normalized attributes. |
| <a name="output_environment"></a> [environment](#output\_environment) | Normalized environment |
| <a name="output_id"></a> [id](#output\_id) | Disambiguated ID. |
| <a name="output_label_order"></a> [label\_order](#output\_label\_order) | Normalized Tag map. |
| <a name="output_name"></a> [name](#output\_name) | Normalized name. |
| <a name="output_repository"></a> [repository](#output\_repository) | Terraform current module repo |
| <a name="output_tags"></a> [tags](#output\_tags) | Normalized Tag map. |
<!-- END_TF_DOCS -->