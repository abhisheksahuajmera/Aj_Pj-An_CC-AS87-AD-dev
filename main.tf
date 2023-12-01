module "resourcing" {
  source  = "./modules/bootstraping/resourcing/resourcegroup" // Add version after registry
  prefix  = "${var.prefix}"
  environment  = "${var.environment}"
  environment_version  = "${var.environment_version}"
}