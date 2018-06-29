output "kubeconfig" {
  value = "${module.eks-cluster.kubeconfig}"
}

output "config-map-aws-auth" {
  value = "${module.eks-cluster.config-map-aws-auth}"
}
