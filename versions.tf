###############################
# IBM Cloud Copyright 2020 IBM
###############################

terraform {
required_version = ">=1.0.0, <2.0"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = ">= 1.64.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.6.1"
    }
  }
}

