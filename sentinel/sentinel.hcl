module "timezone" {
  source = "./modules/timezone.sentinel"
}

policy "terraform-check-maintenance-window" {
  source            = "./maintenance-window.sentinel"
  enforcement_level = "advisory"
}
