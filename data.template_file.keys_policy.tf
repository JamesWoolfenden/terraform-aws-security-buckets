data "template_file" "keys_policy" {
  template = file("${path.module}/files/s3_certificate_policy.json")

  vars = {
    s3_bucket_name = "keys-${data.aws_caller_identity.current.account_id}"
    account_id     = data.aws_caller_identity.current.account_id
  }
}
