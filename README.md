# Azure WAF Landing Zone Terraform Template

This Terraform template was created from the exported Azure ARM template for the WAF sandbox lab.

## What it deploys

- Resource Group
- Virtual Network: `10.10.0.0/16`
- Subnet: `snet-appgw` - `10.10.1.0/24`
- Subnet: `snet-app` - `10.10.2.0/24`
- Standard Static Public IP
- Application Gateway WAF v2
- WAF Policy using OWASP 3.2 in Prevention mode
- HTTP listener on port 80
- HTTPS backend settings on port 443
- Backend pool pointing to Azure App Service
- Custom HTTPS health probe

## Important correction from ARM export

The exported ARM template contained an empty backend pool referenced by the routing rule and another backend pool with an incomplete FQDN. This Terraform version corrects that by using a single backend pool with the full App Service hostname.

Default backend:

```text
app-waf-lab-001-b9euewcufbf7hwbw.southafricanorth-01.azurewebsites.net
```

## How to use

```bash
cd terraform
terraform init
terraform validate
terraform plan
terraform apply
```

## Test

After deployment, open the Application Gateway public IP returned in the Terraform output:

```text
http://<application-gateway-public-ip>/
```

## WAF test examples

```text
http://<application-gateway-public-ip>/?id=1' OR '1'='1
http://<application-gateway-public-ip>/?q=<script>alert('test')</script>
```

## Notes

- Use the Application Gateway public IP to test WAF protection.
- Do not test using the direct App Service URL, because that bypasses the WAF.
- For production, upgrade to HTTPS frontend listener, Key Vault certificates, Private Endpoints, Azure Firewall, Sentinel, and Azure Policy.
