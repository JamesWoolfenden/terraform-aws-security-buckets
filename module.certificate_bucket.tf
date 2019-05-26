module "certificates_bucket" {
  source                  = "JamesWoolfenden/s3/aws"
  version                 = "0.2.11"
  s3_bucket_name          = "certificates-${data.aws_caller_identity.current.account_id}"
  s3_bucket_policy        = "${data.template_file.policy.rendered}"
  s3_bucket_force_destroy = "${var.s3_bucket_force_destroy}"
  common_tags             = "${var.common_tags}"
}

data "aws_caller_identity" "current" {}
