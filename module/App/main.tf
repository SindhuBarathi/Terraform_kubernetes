provider "google" {
  credentials = file("lucid-splicer-335109-6a44f18d5d7e.json")
  project     = var.project
  
}


module "app_eng" {
  source = "/home/sindhubarathi1999/module/App"

  name = var.name

  location    = var.location

  project     = var.project

  initial_node_count = var.initial_node_count

  machine_type = var.machine_type
}