output "cluster_name" {
  value = aws_eks_cluster.eks-cluster.name
}

output "cluster_endpoint" {
  value       = aws_eks_cluster.eks-cluster.endpoint
}