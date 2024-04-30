# VPC-GEN2-CLUSTER

# cluster config file path
output "cluster_config_file_path" {
  value = data.ibm_container_cluster_config.cluster_config.config_file_path
}


#IBM-CONTAINER-REGISTRY

// This allows cr_namespace data to be referenced by other resources and the terraform CLI
// Modify this if only certain data should be exposed
output "ibm_cr_namespace" {
  value       = ibm_cr_namespace.cr_namespace_instance
  description = "cr_namespace resource instance"
}
// This allows cr_retention_policy data to be referenced by other resources and the terraform CLI
// Modify this if only certain data should be exposed
#output "ibm_cr_retention_policy" {
#  value       = ibm_cr_retention_policy.cr_retention_policy_instance
#  description = "cr_retention_policy resource instance"
#}
