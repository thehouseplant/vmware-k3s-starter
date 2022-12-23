# vSphere configuration variables
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


# Provisioner configuration
build {
  sources = ["source.vsphere-iso.ubuntu"]

  # Upload and execute shell scripts
  provisioner "shell" {
    execute_command = ""
    scripts = []
  }
}


# Builder configuration
source "vsphere-iso" "ubuntu" {

  # vSphere parameters
  insecure_connection   = "true"
  username              = "${var.vsphere_username}"
  password              = "${var.vsphere_password}"
  vcenter_server        = "${var.vsphere_server}"
  cluster               = "${var.vsphere_compute_cluster}"
  datacenter            = "${var.vsphere_datacenter}"
  host                  = "${var.vsphere_host}"
  datastore             = "${var.vsphere_datastore}"
  folder                = "${var.vsphere_folder}"
  vm_name               = "${var.vsphere_template_name}"

  # Virtual machine resource parameters
  guest_os_type         = ""
  cpus                  = "${var.cpu_num}"
  cpu_hot_plug          = true
  ram                   = "${var.mem_size}"
  ram_hot_plug          = true
  ram_reserve_all       = false
  notes                 = ""

  network_adapters {
    network             = "${var.vsphere_portgroup_name}"
    network_card        = "vmxnet3"
  }

  disk_controller_type  = ["pvscsi"]
  storage {
    disk_thin_provisioned = "true"
    disk_size             = "${var.disk_size}"
  }

  iso_paths = [
    "${var.os_iso_path}"
  ]
}