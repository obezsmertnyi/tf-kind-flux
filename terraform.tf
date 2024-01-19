terraform {
  required_version = ">=1.6.0"

  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = ">=0.2.0"
    }

    tls = {
      source  = "tls"
      version = ">=4.0.0"
    }

    flux = {
      source  = "fluxcd/flux"
      version = ">=1.2.0"
    }

    github = {
      source  = "integrations/github"
      version = ">=5.0"
    }
  }
}