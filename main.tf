
data "tfe_organization" "pettypiece" {
  name = "pettypiece"
}

resource "tfe_workspace" "pettypiece-ca" {
  name                  = "pettypiece.ca"
  description           = "Creates infra for running the pettypiece.ca server"
  organization          = data.tfe_organization.pettypiece.name
  speculative_enabled   = true
  queue_all_runs        = false
  file_triggers_enabled = false
  terraform_version     = local.terraform_version
  vcs_repo {
    identifier     = "mtpettyp/terraform-pettypiece.ca"
    oauth_token_id = local.oauth_token_id
    branch         = "main"
  }
}


