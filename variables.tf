variable "s3_bucket_force_destroy" {
  description = ""
}

variable "key_names" {
  type = "list"
}

variable "common_tags" {
  type = "map"
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
