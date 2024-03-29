
output "cluster_instruction" {
value = <<EOT
1.  Open OCI Cloud Shell.

2.  Execute below command to setup OKE cluster access:

$ oci ce cluster create-kubeconfig --region ${var.region} --cluster-id ${oci_containerengine_cluster.FoggyKitchenOKECluster.id}

3.  Get PODs names:

$ kubectl get pods 

4.  Verfiy PODs IPs:

$ kubectl describe  pods | grep '  IP:'

EOT
}
