module "certificates_bucket" {
  source                  = "git::https://github.com/JamesWoolfenden/terraform-aws-s3.git?ref=d407883afde3d84e81da4e703da4787edd1f58cd" #v0.4.34
  s3_bucket_name          = "certificates-${data.aws_caller_identity.current.account_id}"
  s3_bucket_policy        = data.template_file.policy.rendered
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  common_tags             = var.common_tags
}
