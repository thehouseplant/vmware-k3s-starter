variable "vsphere_template_name" {
  type    = string
}

variable "vsphere_folder" {
  type    = string
}

variable "cpu_num" {
  type    = number
}

variable "disk_size" {
  type    = number
}

variable "mem_size" {
  type    = number
}

variable "vsphere_username" {
  type    = string
  default = "${env("VSPHERE_USERNAME")}"
}

variable "vsphere_password" {
  type    = string
  default = "${env("VSPHERE_PASSWORD")}"
}

variable "ssh_username" {
  type    = string
  default = "root"
}

variable "ssh_password" {
  type    = string
  default = "${env("SSH_PASSWORD")}"
}

variable "vsphere_server" {
  type    = string
}

variable "vsphere_datacenter" {
  type    = string
}

variable "vsphere_compute_cluster" {
  type    = string
}

variable "vsphere_host" {
  type    = string
}

variable "vsphere_datastore" {
  type    = string
}

variable "vsphere_portgroup_name" {
  type    = string
}

variable "os_iso_path" {
  type    = string
}