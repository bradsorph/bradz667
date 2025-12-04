# --- RESOURCE 1: Inventory created in AAP ---
resource "aap_inventory" "web_inv" {
  name         = "BRADZ667 TF Web Inventory"
  description  = "Inventory created by Terraform"
  organization = 2
}

# --- DATA OBJECT 1: Lookup Job Template (deploy_webserver) ---
data "aap_job_template" "deploy_webserver" {
  name              = "BRADZ667-deploy_webserver"
  organization_name = "TechXchangeNL"
}

# --- DATA OBJECT 2: Lookup Job Template (deploy_website) ---
data "aap_job_template" "deploy_website" {
  name              = "BRADZ667-deploy_website"
  organization_name = "TechXchangeNL"
}

