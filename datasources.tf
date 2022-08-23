data "oci_identity_region_subscriptions" "home_region_subscriptions" {
  tenancy_id = var.tenancy_ocid

  filter {
    name   = "is_home_region"
    values = [true]
  }
}

data "oci_containerengine_cluster_option" "FoggyKitchenOKEClusterOption" {
  provider          = oci.targetregion
  cluster_option_id = "all"
}

data "oci_containerengine_node_pool_option" "FoggyKitchenOKEClusterNodePoolOption" {
  provider          = oci.targetregion
  node_pool_option_id = "all"
}

# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  provider       = oci.targetregion
  compartment_id = var.tenancy_ocid
}

data "oci_core_services" "FoggyKitchenAllOCIServices" {
  provider       = oci.targetregion

  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}

data "template_file" "ngnix_deployment" {

  template = "${file("${path.module}/templates/ngnix.template.yaml")}"
  vars     = {
      number_of_ngnix_replicas = "${var.number_of_ngnix_replicas}"
  }
}