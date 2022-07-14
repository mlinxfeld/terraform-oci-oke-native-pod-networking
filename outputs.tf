
output "cluster_instruction" {
value = <<EOT
1.  Open OCI Cloud Shell.

2.  Execute below command to setup OKE cluster access:

$ oci ce cluster create-kubeconfig --region ${var.region} --cluster-id ${oci_containerengine_cluster.FoggyKitchenOKECluster.id}

3.  Create NGINX deployment:

$ kubectl create -f nginx.yaml

4.  Get POD name:

$ kubectl get pods 

5.  Verfiy PODs IPs:

$ kubectl describe  pods | grep '  IP:'

EOT
}