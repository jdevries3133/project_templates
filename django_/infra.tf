terraform {

  backend "s3" {
    bucket = "my-sites-terraform-remote-state"
    key    = "django_template"
    region = "us-east-2"
  }


  # no remote state backend will be used, because this is for local development
  # only
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.7.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.4.1"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

data "external" "git_describe" {
  program = ["sh", "scripts/git_describe.sh"]
}

resource "random_password" "django_secret" {
  length  = 48
  special = true
}

module "basic-deployment" {
  source  = "jdevries3133/basic-deployment/kubernetes"
  version = "0.0.9"

  app_name  = "django-boilerplate"
  container = "jdevries3133/django_template:${data.external.git_describe.result.output}"
  domain    = "boilerplate.jackdevries.com"

  extra_env = {
    DJANGO_SECRET          = random_password.django_secret.result
    DJANGO_SETTINGS_MODULE = "django_.settings"
  }
}

