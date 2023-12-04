// bootstraping-resourcing
module "resourcing_resourcegroup" {
  source              = "./modules/bootstraping/resourcing/resourcegroup" // Add version after registry
  prefix              = var.prefix
  environment         = var.environment
  environment_version = var.environment_version
}
// appusing-securing-adb2c
module "securing_adb2c" {
  source              = "./modules/appusing/securing/adb2c" // Add version after registry
}

// appusing-storing-saaccunt
module "slcomputing_saaccunt" {
  source              = "./modules/appusing/storing/saaccount" // Add version after registry
}

// appusing-slcomputing-serplan
module "slcomputing_serplan" {
  source              = "./modules/appusing/slcomputing/serplan" // Add version after registry
}

// appusing-slcomputing-azfunc
module "slcomputing_azfunc" {
  source              = "./modules/appusing/slcomputing/azfunc" // Add version after registry
}
