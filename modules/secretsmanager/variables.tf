variable "secret_name" {
  description = "シークレット名"
  type        = string
}

variable "secret_value" {
  description = "シークレットの値"
  type        = map(string)
}
