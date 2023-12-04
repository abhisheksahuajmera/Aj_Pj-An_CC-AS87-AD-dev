// bootstraping-resourcing
module "resourcing_rg" {
  source              = "./modules/bootstraping/resourcing/rg" // Add version after registry
  prefix              = var.prefix
  environment         = var.environment
  environment_version = var.environment_version
}

// appusing-securing-adb2c
module "securing_adb2c" {
  source              = "./modules/appusing/securing/adb2c" // Add version after registry
}