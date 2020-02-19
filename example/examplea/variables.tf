variable "key_names" {
  type        = list
  description = "List of names to create ssh keys for"
}

variable "s3_bucket_force_destroy" {
  type        = string
  description = "Set bucket so its slightly harder to destroy"
}

variable "common_tags" {
  description = "Implements the commons tags scheme"
  type        = map
}
