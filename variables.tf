# VPC-GEN2-CLUSTER

variable "flavor" {
  default = "bx2.4x16"
  type    = string
}

variable "worker_count" {
  default = 1
  type    = number
}

variable "resource_group" {
  default = "Default"
  type    = string
}

variable "region" {
  default = "us-south"
  type    = string
}

variable "service_instance_name" {
  default = "my-service-instance"
  type    = string
}

variable "cluster_name" {
  default = "mytestcluster"
  type    = string
}

variable "worker_pool_name" {
  default = "myvpc2pool"
  type    = string
}

variable "kube_version" {
  type        = string
  description = "Kubernetes version that you want to set up in your cluster."
  default     = "1.29"
}



# IBM-CONTAINER-REGISTRY

variable "ibmcloud_api_key" {
  description = "IBM Cloud API key"
  type        = string
}

// Resource arguments for cr_namespace
variable "cr_namespace_name" {
  description = "The name of the namespace."
  type        = string
  default     = "name"
}

variable "cr_namespace_tags" {
  description = "Local tags associated with cr_namespace"
  type        = set(string)
  default     = []
}

// Resource arguments for cr_retention_policy
variable "cr_retention_policy_namespace" {
  description = "The namespace to which the retention policy is attached."
  type        = string
  default     = "birds"
}
variable "cr_retention_policy_images_per_repo" {
  description = "Determines how many images will be retained for each repository when the retention policy is executed. The value -1 denotes 'Unlimited' (all images are retained)."
  type        = number
  default     = 10
}
variable "cr_retention_policy_retain_untagged" {
  description = "Determines if untagged images are retained when executing the retention policy. This is false by default meaning untagged images will be deleted when the policy is executed."
  type        = bool
  default     = false
}
