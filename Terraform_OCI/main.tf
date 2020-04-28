module "vcn_create_module" {
  source           = "./vcn_create_module"
  tenancy_ocid     = "${var.tenancy_ocid}"
  user_ocid        = "${var.user_ocid}"
  fingerprint      = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region           = "${var.region}"
  compartment_id   = "${var.compartment_id}"
}
