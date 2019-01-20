## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common_tags | - | map | - | yes |
| depends_on | This is a way to make a module depends on, which isnt built in. | list | `<list>` | no |
| key_names | - | list | - | yes |
| s3_bucket_force_destroy | - | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| certificates_bucket | - |
| keys_bucket | - |
