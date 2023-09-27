variable "region" {
  type = string
  default = "ap-southeast-1"
  description = "AWS region code"
}

variable "zone_domain" {
  type = string
  description = "domain name associated with the route 53 hosted zone"
}

variable "record_file" {
  type = string
  description = "file containing the record config in json format"
}