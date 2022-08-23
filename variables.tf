variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}

variable "availablity_domain_name" {
  default = ""
}

variable "ssh_public_key" {
  default = ""
}

variable "kubernetes_version" {
  default = "v1.24.1"
}

variable "node_pool_size" {
  default = 3
}

variable "oke_node_shape" {
  default = "VM.Standard.A1.Flex"
}

variable "oke_node_os_version" {
  default = "8.6"
  #default = "8.5"
  #default = "7.9"
}

variable "flex_shape_memory" {
  default = 16
}

variable "flex_shape_ocpus" {
  default = 2
}

variable "cluster_name" {
  default = "FoggyKitchenOKECluster"
}

variable "max_pods_per_node" {
  default = 10
}

variable "deploy_ngnix" {
  default = true
}

variable "number_of_ngnix_replicas" {
  default = 10
}

variable "network_cidrs" {
  type = map(string)

  default = {
    VCN-CIDR                        = "10.20.0.0/16"
    NODES-PODS-SUBNET-REGIONAL-CIDR = "10.20.30.0/24"
    LB-SUBNET-REGIONAL-CIDR         = "10.20.20.0/24"
    ENDPOINT-SUBNET-REGIONAL-CIDR   = "10.20.10.0/28"
    ALL-CIDR                        = "0.0.0.0/0"
  }
}

variable "oci_service_gateway" {
  type = map(any)
  default = {
    ap-mumbai-1    = "all-bom-services-in-oracle-services-network"
    ap-seoul-1     = "all-icn-services-in-oracle-services-network"
    ap-sydney-1    = "all-syd-services-in-oracle-services-network"
    ap-tokyo-1     = "all-nrt-services-in-oracle-serviecs-network"
    ca-toronto-1   = "all-yyz-services-in-oracle-services-network"
    eu-frankfurt-1 = "all-fra-services-in-oracle-services-network"
    eu-zurich-1    = "all-zrh-services-in-oracle-services-network"
    sa-saopaulo-1  = "all-gru-services-in-oracle-services-network"
    uk-london-1    = "all-lhr-services-in-oracle-services-network"
    us-ashburn-1   = "all-iad-services-in-oracle-services-network"
    us-langley-1   = "all-lfi-services-in-oracle-services-network"
    us-luke-1      = "all-luf-services-in-oracle-services-network"
    us-phoenix-1   = "all-phx-services-in-oracle-services-network"
  }
}

