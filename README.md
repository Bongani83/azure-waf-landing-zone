# Azure-waf-landing-zone
Azure WAF-secured web application using Application Gateway and App Service (Hands-on) 

## Overview
This project demonstrates a secure Azure architecture using Application Gateway (WAF) to protect a web application hosted on Azure App Service.

## Architecture
![Architecture](diagram/architecture.png)

## Components
- Azure Application Gateway (WAF v2)
- WAF Policy (OWASP rules, Prevention mode)
- Azure App Service
- Virtual Network with subnets
- Public IP
- Log Analytics

## Traffic Flow
Internet → WAF → App Service

## Key Learnings
- Fixed 502 Bad Gateway using hostname override
- Configured backend routing with HTTPS
- Validated WAF using simulated attacks

## Validation
Simulated attacks:
- SQL Injection
- XSS

Verified:
- WAF blocked malicious traffic
- Logs confirmed detection

## Deployment
Terraform files available in `/terraform`

ARM template available in `/arm-template`

## Screenshots
See `/screenshots` folder

## Future Improvements
- Private Endpoints
- Azure Firewall
- Front Door
- Hub-and-Spoke architecture
