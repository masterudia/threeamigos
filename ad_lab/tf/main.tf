module "vpc" {
    source = "./modules/vpc"
  
}

module "managed-ad" {
    source = "./modules/managed-ad"
  
    ds_managed_ad_directory_name = "corp.example.com"
    ds_managed_ad_edition        = "Standard"
    ds_managed_ad_short_name     = "CORP"
    ds_managed_ad_vpc_id         = module.vpc.vpc_id
    ds_managed_ad_subnet_ids     = module.vpc.private_subnets
    }

