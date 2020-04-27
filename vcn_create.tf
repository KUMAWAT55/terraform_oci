provider "oci" {
  version = ">= 3.0.0"
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaksjyy2m5leuijdgxzxiy2j2li67l7bshh74n5hcparrhxr7iq7uq"
  user_ocid = "ocid1.user.oc1..aaaaaaaa7txfdrwsjur6lrrog2vcsvqd2mxag2awlvzgunkgidq3dacu7p6a"
  fingerprint = "6b:5e:d9:07:b5:48:d2:23:1a:2b:60:18:dd:66:9a:cc"
  private_key_path = "oci_api_key.pem"
  region = "ap-mumbai-1"
}

resource "oci_core_virtual_network" "simple-vcn" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaa7vg63dona4ujp4urknt6bgps7fqnb3dlrwv5ygbcexcqodawerq"
  display_name   = "simple-vcn"
}

terraform {
backend "http" {
update_method="PUT"
address = "https://objectstorage.ap-mumbai-1.oraclecloud.com/p/exx820b1GC9ab8PvrAEijrmHsE-l9TrunMG-_nOJdMes/n/bml7jwcbgcqp/b/terraform_bucket/o/terraform.tfstate"
}
}
