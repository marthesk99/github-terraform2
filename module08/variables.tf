variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
  default     = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
}

variable "location" {
  type        = string
  description = "Location of the resource"
  default = "westeurope"
}
variable "rg_name" {
  type        = string
  description = "Name of the resource group"
  default = "web-demo"
}

variable "sa_name" {
  type        = string
  description = "Name of the storage account"
  default = "webdemo"
}

variable "source_content" {
  type        = string
  description = "Source content for the index.html file"
  default     = "<h1>Web page created with Terraform</h1>"
}

variable "index_document" {
  type        = string
  description = "Name of the index document"
  default = "index.html"
}