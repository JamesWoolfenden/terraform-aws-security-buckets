output "keys_bucket" {
  value = "${module.keys_bucket.bucket_domain_name}"
}

output "certificates_bucket" {
  value = "${module.certificates_bucket.bucket_domain_name}"
}
