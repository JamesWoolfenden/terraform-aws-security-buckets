variable "s3_bucket_force_destroy" {
  type=string
  description = ""
}

variable "key_names" {
  type = list
}

variable "common_tags" {
  description="implements the common tags scheme"
  type = map
}

