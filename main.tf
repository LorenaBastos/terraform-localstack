module "dev_module" {
 source  = "../dev"
 version = "1.0.0"
}

module "qa_module" {
 source  = "../qa"
 version = "1.0.0"
}

module "prod_module" {
 source  = "../prod"
 version = "1.0.0"
}