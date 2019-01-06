module "security_buckets" {
  source                  = "../../"
  s3_bucket_force_destroy = "${var.s3_bucket_force_destroy}"
  key_names               = "${var.key_names}"
  common_tags             = "${var.common_tags}"
}
