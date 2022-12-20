# vSphere credential and server variables
variable "vsphere_user" {
  description = "Name of the vSphere user account"
  default     = ""
}

variable "vsphere_password" {
  description = "Password for the vSphere user account"
  default     = ""
}

variable "vsphere_server" {
  description = "Name of the vSphere server"
  default     = ""
}

variable "vsphere_datacenter" {
  description = "URL of the vSphere datacenter"
  default     = ""
}