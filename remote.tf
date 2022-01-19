terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "graceful-hippo"
    workspaces {
      name = "run-agents-lab"
    }
  }
}
