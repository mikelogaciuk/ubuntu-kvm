variable "hosts" {
  type    = number
  default = 1
}
variable "name" {
    type    = string
    default = "ubuntu"
}
variable "hostnames" {
  type    = list(any)
  default = ["ubuntu"]
}
variable "pools" {
  type    = list(any)
  default = ["ubuntu"]
}
variable "distros" {
  type    = list(any)
  default = ["ubuntu"]
}
variable "interface" {
  type    = string
  default = "ens01"
}
variable "memory" {
  type    = string
  default = "4096"
}
variable "cpu" {
  type    = number
  default = 2
}
variable "ips" {
  type    = list(any)
  default = ["192.168.122.89"]
}
variable "macs" {
  type    = list(any)
  default = ["00:11:22:33:44:55"]
}

