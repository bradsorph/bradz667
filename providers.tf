terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  
provider "aap" {
  host = "https://caap.fvz.ansible-labs.de/" 

  #token = "my-aap-token" # Also supportsAAP_TOKEN environment variable

  # Basic authentication is also supported, ignored if token is set
  #username = "my-aap-username" # Also supports AAP_USERNAME environment variable
  #password = "my-aap-password" # Also supports AAP_PASSWORD environment variable
}
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
    default_tags {
    tags = {
      ManagedBy = "HCP Terraform"
    }
  }
}



