variable "user_name" {
  type    = list(string)
  default = ["lihon1"]
}

variable "db_read_capacity" {
  type    = list(string)
  default = ["2"]
}

variable "db_write_capacity" {
  type    = list(string)
  default = ["1"]
}