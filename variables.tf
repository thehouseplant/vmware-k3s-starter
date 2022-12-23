# vSphere credential and server variables
variable "vsphere_user" {
  description = "Name of the vSphere user account"
  default     = ""
  type        = string
}

variable "vsphere_password" {
  description = "Password for the vSphere user account"
  default     = ""
  type        = string
}

variable "vsphere_server" {
  description = "Name of the vSphere server"
  default     = ""
  type        = string
}

variable "vsphere_datacenter" {
  description = "URL of the vSphere datacenter"
  default     = ""
  type        = string
}