module "helm-release" {
  source = "app.terraform.io/KantarWare/release/helm"
  
    prometheus-operator = {
      repository_name     = "stable"
      repository_url      = "https://kubernetes-charts.storage.googleapis.com"
      repository_username = null
      repository_password = null
      namespace           = "prometheus"
      version             = "8.12.10"
      chart               = "prometheus-operator"
      force_update        = true
      wait                = false
      recreate_pods       = false
      values = null
      set_strings = null
    }
  }
}