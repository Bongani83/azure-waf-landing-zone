variable "resource_group_name" {
  description = "Existing resource group where the WAF landing zone will be deployed."
  type        = string
  default     = "rg-waf-lab-prod-001"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "southafricanorth"
}

variable "vnet_name" {
  description = "Virtual network name."
  type        = string
  default     = "vnet-waf-lab-001"
}

variable "public_ip_name" {
  description = "Public IP name for Application Gateway frontend."
  type        = string
  default     = "pip-waf-lab-001"
}

variable "application_gateway_name" {
  description = "Application Gateway name."
  type        = string
  default     = "agw-waf-lab-001"
}

variable "waf_policy_name" {
  description = "WAF policy name."
  type        = string
  default     = "waf-policy-001"
}

variable "backend_fqdn" {
  description = "Azure App Service backend FQDN. Use hostname only, no https:// and no trailing slash."
  type        = string
  default     = "app-waf-lab-001-b9euewcufbf7hwbw.southafricanorth-01.azurewebsites.net"
}
