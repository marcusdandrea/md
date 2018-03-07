# variable "tenancy_ocid" {}
# variable "user_ocid" {}
# variable "fingerprint" {}
# variable "private_key_path" {}
# variable "compartment_ocid" {}
# variable "region" {}

# provider "oci" {
#  tenancy_ocid = "${var.tenancy_ocid}"
#   user_ocid = "${var.user_ocid}"
#   fingerprint = "${var.fingerprint}"
#   private_key_path = "${var.private_key_path}"
#   region = "${var.region}"
# }
#

resource "oci_core_virtual_network" "PROD" {
  cidr_block = "10.0.0.0/16"
  dns_label = "PROD"
  compartment_id = "${var.compartment_ocid}"
  display_name = "PROD"
}

resource "oci_core_virtual_network" "DMZ" {
  cidr_block = "172.16.0.0/16"
  dns_label = "DMZ"
  compartment_id = "${var.compartment_ocid}"
  display_name = "DMZ"
}

