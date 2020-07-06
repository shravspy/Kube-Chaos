resource "helm_release" "pg" {
  name  = "pg"
  namespace  = "dev"
  chart = "stable/postgresql"

  set {
    name  = "postgresqlUsername"
    value = "postgres"
  }

  set {
    name  = "postgresqlPassword"
    value = "test"
  }
} 

resource "kubectl_manifest" "pg" {
    yaml_body = file("./helm/postgres/values-prod.yaml")
}