module "keys_bucket" {
  source                  = "JamesWoolfenden/s3/aws"
  version                 = "0.4.34"
  s3_bucket_name          = "keys-${data.aws_caller_identity.current.account_id}"
  s3_bucket_policy        = data.template_file.keys_policy.rendered
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  common_tags             = var.common_tags
}

resource "aws_s3_bucket_object" "pem-private" {
  count   = length(var.key_names)
  bucket  = "keys-${data.aws_caller_identity.current.account_id}"
  key     = "id_rsa.${var.key_names[count.index]}"
  content = element(tls_private_key.ssh.*.private_key_pem, count.index)
}

resource "aws_s3_bucket_object" "ssh-public" {
  count   = length(var.key_names)
  bucket  = "keys-${data.aws_caller_identity.current.account_id}"
  key     = "id_rsa.${var.key_names[count.index]}.pub"
  content = element(tls_private_key.ssh.*.public_key_openssh, count.index)
}
