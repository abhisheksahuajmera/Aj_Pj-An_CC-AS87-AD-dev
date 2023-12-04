module "resourcing_rg" {
  source              = "./modules/bootstraping/resourcing/rg" // Add version after registry
  prefix              = var.prefix
  environment         = var.environment
  environment_version = var.environment_version
}