# terraform-aws-security-buckets
This module is to create a standard place to keep your secure file objects that you need in your account.
Its supposed to be a basic step, until its replacedc by something more sophisticated.
Follow the exampleA for the implementation.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common_tags |  | map | - | yes |
| key_names |  | list | - | yes |
| s3_bucket_force_destroy |  | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| certificates_bucket |  |
| keys_bucket |  |

�