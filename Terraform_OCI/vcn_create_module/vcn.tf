resource "oci_core_virtual_network" "terraform-vcn" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "${var.compartment_id}"
  display_name   = "terraform_vcn"
}

terraform {
backend "http" {
update_method="PUT"
address = "https://objectstorage.ap-mumbai-1.oraclecloud.com/p/ex820b1GC9ab8PvrAEijrmHsE-l9TrunMG-_nOJdMes/n/bml7jwcbgcqp/b/terraform_bucket/o/terraform.tfstate"
}
}
