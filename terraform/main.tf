module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "<ACCOUNT EMAIL>"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "<SSO EMAIL>"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "Security" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "malsaksh@amazon.com"
    AccountName               = "Security"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "malsaksh@amazon.com"
    SSOUserFirstName          = "Sakshi"
    SSOUserLastName           = "Malhotra"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Security"
    change_reason       = "Creating new Security AWS account"
  }

  account_customizations_name = "Security-Security"
}


module "Sakshi Mendiratta - Sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "malsaksh+second@amazon.com"
    AccountName               = "Sakshi Mendiratta - Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "malsaksh+second@amazon.com"
    SSOUserFirstName          = "Sakshi"
    SSOUserLastName           = "Mendiratta"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Sakshi Mendiratta - Sandbox"
    change_reason       = "Creating new Security account"
  }

  account_customizations_name = "Security-Sakshi Mendiratta - Sandbox"
}
