output "application_gateway_public_ip" {
  description = "Public IP address used to access the WAF-protected application."
  value       = azurerm_public_ip.appgw_pip.ip_address
}

output "backend_fqdn" {
  description = "Backend App Service FQDN configured in the Application Gateway backend pool."
  value       = var.backend_fqdn
}

output "waf_policy_id" {
  description = "WAF Policy resource ID."
  value       = azurerm_web_application_firewall_policy.waf.id
}
