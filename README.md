## VirtusLab Cloud Intern Task

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.virtuslab-task](https://registry.terraform.io/providers/kreuzwerker/docker/2.16.0/docs/resources/container) | resource |
| [docker_image.virtuslab](https://registry.terraform.io/providers/kreuzwerker/docker/2.16.0/docs/resources/image) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_docker_image"></a> [docker\_image](#input\_docker\_image) | docker image to pull from dockerhub | `string` | n/a | yes |
| <a name="input_external_port"></a> [external\_port](#input\_external\_port) | external port | `number` | n/a | yes |
| <a name="input_internal_port"></a> [internal\_port](#input\_internal\_port) | internal port | `number` | n/a | yes |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | ip\_address | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->





### Steps taken
Firstly I created basic HTML page using borderplate code. 
Then I made a Dockerfile that is using Nginx image and uses html page.
After that I created two terraform files with tf file format. Main.tf file has 


### How to run terraform 
1. terraform init
2. terraform apply
3. enter values
 ![alt text](https://github.com/batonck/virtuslab-intern-task/blob/master/entering_values.png)
4. type "yes" to apply 


### Ideas or improvements
-internal port variable isn't neccessary in this case but I implemented it if you want to use it with other docker images with other exposed port wich I use in this task 

-I could add more variables to make this infrastructure more flexible and reusable

-I could add outputs.tf content in case we want to expand our infrastructure with other modules wich would use return values from previously created modules

-I could assing default values for variables so that we don't have to enter them on startup
