module "dev_module" {
 source  = "./dev"
}

module "qa_module" {
 source  = "./qa"
}

module "prod_module" {
 source  = "./prod"
}