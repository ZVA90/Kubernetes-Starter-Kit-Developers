module "doks_flux_cd" {
  source = "github.com/digitalocean/container-blueprints/create-doks-with-terraform-flux"

  # DOKS 
  do_api_token                 = "<YOUR_DO_API_TOKEN_HERE>"                 # DO API TOKEN
  doks_cluster_name            = "<YOUR_DOKS_CLUSTER_NAME_HERE>"            # Name of this `DOKS` cluster ?
  doks_cluster_region          = "<YOUR_DOKS_CLUSTER_REGION_HERE>"          # What region should this `DOKS` cluster be provisioned in?
  doks_cluster_version         = "<YOUR_DOKS_CLUSTER_VERSION_HERE>"         # What Kubernetes version should this `DOKS` cluster use ?
  doks_cluster_pool_size       = "<YOUR_DOKS_CLUSTER_POOL_SIZE_HERE>"       # What machine type to use for this `DOKS` cluster ?
  doks_cluster_pool_node_count = "<YOUR_DOKS_CLUSTER_POOL_NODE_COUNT_HERE>"   # How many worker nodes this `DOKS` cluster should have ?
  
  # GitHub
  # Important notes:
  #  - This module expects your Git `repository` and `branch` to be created beforehand
  #  - Currently, the `github_token` doesn't work with SSO
  github_user               = "<YOUR_GITHUB_USER_HERE>"               # Your `GitHub` username
  github_token              = "<YOUR_GITHUB_TOKEN_HERE>"              # Your `GitHub` personal access token
  git_repository_name       = "<YOUR_GIT_REPOSITORY_NAME_HERE>"       # Git repository where `Flux CD` manifests should be stored
  git_repository_branch     = "<YOUR_GIT_REPOSITORY_BRANCH_HERE>"     # Branch name to use for this `Git` repository (e.g.: `main`)
  git_repository_sync_path  = "<YOUR_GIT_REPOSITORY_SYNC_PATH_HERE>"  # Git repository path where the manifests to sync are committed (e.g.: `clusters/dev`)
}
