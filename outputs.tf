output "cluster_endpoint" {
  description = "endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "cluster name"
  value       = module.eks.cluster_name
}