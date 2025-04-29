module "dev_module" {
 source  = "./modules/dev"
}

module "qa_module" {
 source  = "./modules/qa"
}

module "prod_module" {
 source  = "./modules/prod"
}