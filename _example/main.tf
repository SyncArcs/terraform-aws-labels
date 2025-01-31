module "labels" {
  source      = "./../"
  name        = "app"
  managedby   = "SyncArcs"
  environment = "test"
  label_order = ["name", "environment"]
  attributes  = ["private"]
  extra_tags = {
    Application = "Demo"
  }
}
