variable "resource_group_name" {
  description = "New RG for blob resources"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "container_name" {
  description = "Name of the Blob Storage container"
  type        = string
}
