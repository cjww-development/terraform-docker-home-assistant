[![Apache-2.0 license](http://img.shields.io/badge/license-Apache-brightgreen.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

terraform-docker-home-assistant
==================

This repository deploys a PiHole setup to docker

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.11 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | >=2.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.home_assistant](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container) | resource |
| [docker_image.home_assistant](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image) | resource |
| [docker_volume.home_assistant](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/volume) | resource |
| [docker_registry_image.home_assistant](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/data-sources/registry_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_docker_host"></a> [docker\_host](#input\_docker\_host) | The host where docker resides | `string` | n/a | yes |
| <a name="input_home_assistant_container_name"></a> [home\_assistant\_container\_name](#input\_home\_assistant\_container\_name) | The name of the Home Assistant container to be created | `string` | n/a | yes |
| <a name="input_home_assistant_image_name"></a> [home\_assistant\_image\_name](#input\_home\_assistant\_image\_name) | The name of the Home Assistant docker image that should be pulled | `string` | n/a | yes |
| <a name="input_home_assistant_volume_name"></a> [home\_assistant\_volume\_name](#input\_home\_assistant\_volume\_name) | The name of the docker volume to be used by the Home Assistant container | `string` | n/a | yes |
| <a name="input_local_time_path"></a> [local\_time\_path](#input\_local\_time\_path) | The path to the systems localtime | `string` | `"/etc/localtime"` | no |
| <a name="input_restart_policy"></a> [restart\_policy](#input\_restart\_policy) | The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
