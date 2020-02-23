resource "aws_key_pair" "ssh" {
  count      = length(var.key_names)
  key_name   = "id_rsa.${var.key_names[count.index]}"
  public_key = element(tls_private_key.ssh.*.public_key_openssh, count.index)
}
