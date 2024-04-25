variable "project" {
  type        = string
  description = "Project"
  default     = "Terraform-test"
}
variable "owner" {
  type        = string
  description = "Owner of resource"
}
variable "location" {
  type        = string
  description = "The Resource Location"
}
variable "storage_account_name" {
  type        = string
  description = "The Storage Account Name"
}
variable "environment" {
  type        = string
  description = "The environment either Prod or Dev"
}
variable "resource_group_name" {
  type        = string
  description = "The resource group name where the resource needs to be deployed"
}