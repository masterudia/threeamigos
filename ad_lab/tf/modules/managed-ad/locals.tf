locals {
  ds_managed_ad_type               = "MicrosoftAD" # Static input to force only MAD deployments
  ds_managed_ad_admin_secret_sufix = "admin"
  vpc_id                           = var.ds_managed_ad_vpc_id
  vpc_private_subnets              = slice(var.ds_managed_ad_subnet_ids, 0, 2)
}